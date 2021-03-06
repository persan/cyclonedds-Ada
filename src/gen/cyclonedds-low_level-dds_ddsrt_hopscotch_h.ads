pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package CycloneDDS.Low_Level.dds_ddsrt_hopscotch_h is

-- * Copyright(c) 2006 to 2018 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   -- * The hopscotch hash table is dependent on a proper functioning hash.
   -- * If the hash function generates a lot of hash collisions, then it will
   -- * not be able to handle that by design.
   -- * It is capable of handling some collisions, but not more than 32 per
   -- * bucket (less, when other hash values are clustered around the
   -- * collision value).
   -- * When proper distributed hash values are generated, then hopscotch
   -- * works nice and quickly.
   --

   type ddsrt_hh_hash_fn is access function
     (arg1 : System.Address) return unsigned with
      Convention => C;

      -- * Hopscotch needs to be able to compare two elements.
      -- * Returns 0 when not equal.
      --

   type ddsrt_hh_equals_fn is access function
     (arg1 : System.Address; arg2 : System.Address) return int with
      Convention => C;

   -- * Hopscotch is will resize its internal buckets list when needed. It will
   -- * call this garbage collection function with the old buckets list. The
   -- * caller has to delete the list when it deems it safe to do so.
      --

   type ddsrt_hh_buckets_gc_fn is access procedure
     (arg1 : System.Address; arg2 : System.Address) with
      Convention => C;

      -- Sequential version
   type ddsrt_hh is null record;   -- incomplete struct

   type ddsrt_hh_iter is record
      hh     : access ddsrt_hh;
      cursor : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   function ddsrt_hh_new
     (init_size : unsigned; hash : ddsrt_hh_hash_fn;
      equals    : ddsrt_hh_equals_fn) return access ddsrt_hh with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_new";

   procedure ddsrt_hh_free (hh : access ddsrt_hh) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_free";

   function ddsrt_hh_lookup
     (rt : access constant ddsrt_hh; template : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_lookup";

   function ddsrt_hh_add
     (rt : access ddsrt_hh; data : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_add";

   function ddsrt_hh_remove
     (rt : access ddsrt_hh; template : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_remove";

      -- may delete a
   procedure ddsrt_hh_enum
     (rt    : access ddsrt_hh;
      f     : access procedure (arg1 : System.Address; arg2 : System.Address);
      f_arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_enum";

      -- may delete nodes
   function ddsrt_hh_iter_first
     (rt : access ddsrt_hh; iter : access ddsrt_hh_iter)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_iter_first";

   function ddsrt_hh_iter_next
     (iter : access ddsrt_hh_iter) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_hh_iter_next";

      -- Concurrent version
   type ddsrt_chh is null record;   -- incomplete struct

   type ddsrt_chh_bucket is null record;   -- incomplete struct

   type ddsrt_chh_iter is record
      bs     : access ddsrt_chh_bucket;
      size   : aliased unsigned;
      cursor : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   function ddsrt_chh_new
     (init_size      : unsigned; hash : ddsrt_hh_hash_fn;
      equals         : ddsrt_hh_equals_fn; gc_buckets : ddsrt_hh_buckets_gc_fn;
      gc_buckets_arg : System.Address) return access ddsrt_chh with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_new";

   procedure ddsrt_chh_free (hh : access ddsrt_chh) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_free";

   function ddsrt_chh_lookup
     (rt : access ddsrt_chh; template : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_lookup";

   function ddsrt_chh_add
     (rt : access ddsrt_chh; data : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_add";

   function ddsrt_chh_remove
     (rt : access ddsrt_chh; template : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_remove";

      -- may delete a
   procedure ddsrt_chh_enum_unsafe
     (rt    : access ddsrt_chh;
      f     : access procedure (arg1 : System.Address; arg2 : System.Address);
      f_arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_enum_unsafe";

   function ddsrt_chh_iter_first
     (rt : access ddsrt_chh; it : access ddsrt_chh_iter)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_iter_first";

   function ddsrt_chh_iter_next
     (it : access ddsrt_chh_iter) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_chh_iter_next";

      -- Sequential version, embedded data
   type ddsrt_ehh is null record;   -- incomplete struct

   type ddsrt_ehh_iter is record
      hh     : access ddsrt_ehh;
      cursor : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   function ddsrt_ehh_new
     (elemsz : unsigned_long; init_size : unsigned; hash : ddsrt_hh_hash_fn;
      equals : ddsrt_hh_equals_fn) return access ddsrt_ehh with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_new";

   procedure ddsrt_ehh_free (hh : access ddsrt_ehh) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_free";

   function ddsrt_ehh_lookup
     (rt : access constant ddsrt_ehh; template : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_lookup";

   function ddsrt_ehh_add
     (rt : access ddsrt_ehh; data : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_add";

   function ddsrt_ehh_remove
     (rt : access ddsrt_ehh; template : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_remove";

      -- may delete a
   procedure ddsrt_ehh_enum
     (rt    : access ddsrt_ehh;
      f     : access procedure (arg1 : System.Address; arg2 : System.Address);
      f_arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_enum";

      -- may delete nodes
   function ddsrt_ehh_iter_first
     (rt : access ddsrt_ehh; iter : access ddsrt_ehh_iter)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_iter_first";

   function ddsrt_ehh_iter_next
     (iter : access ddsrt_ehh_iter) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ehh_iter_next";

end CycloneDDS.Low_Level.dds_ddsrt_hopscotch_h;
