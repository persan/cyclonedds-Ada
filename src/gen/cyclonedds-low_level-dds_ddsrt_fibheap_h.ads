pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

with System;

package CycloneDDS.Low_Level.dds_ddsrt_fibheap_h is

   --  arg-macro: procedure DDSRT_FIBHEAPDEF_INITIALIZER (offset, cmp)
   --    { (offset), (cmp) }
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

   --  <>type ddsrt_fibheap_node;
   type ddsrt_fibheap_node_t is record
      parent   : access ddsrt_fibheap_node_t;
      children : access ddsrt_fibheap_node_t;
      prev     : access ddsrt_fibheap_node_t;
      next     : access ddsrt_fibheap_node_t;
      mark     : Extensions.Unsigned_1;
      degree   : Extensions.Unsigned_31;
   end record with
      Convention => C_Pass_By_Copy,

      Alignment => 8;

      --  <>subtype ddsrt_fibheap_node_t is ddsrt_fibheap_node;

   type ddsrt_fibheap_def_t is record
      offset : aliased access unsigned;
      cmp    : access function
        (arg1 : System.Address; arg2 : System.Address) return int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_fibheap_def_t is ddsrt_fibheap_def;

      -- points to root with min key value
   type ddsrt_fibheap_t is record
      roots : access ddsrt_fibheap_node_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_fibheap_t is ddsrt_fibheap;

   procedure ddsrt_fibheap_def_init
     (fhdef : access ddsrt_fibheap_def_t; offset : access unsigned;
      cmp   : access function
        (arg1 : System.Address; arg2 : System.Address) return int) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_def_init";

   procedure ddsrt_fibheap_init
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh    : access ddsrt_fibheap_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_init";

   function ddsrt_fibheap_min
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh    : access constant ddsrt_fibheap_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_min";

   procedure ddsrt_fibheap_merge
     (fhdef : access constant ddsrt_fibheap_def_t; a : access ddsrt_fibheap_t;
      b     : access ddsrt_fibheap_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_merge";

   procedure ddsrt_fibheap_insert
     (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t;
      vnode : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_insert";

   procedure ddsrt_fibheap_delete
     (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t;
      vnode : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_delete";

   function ddsrt_fibheap_extract_min
     (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_extract_min";

      -- to be called AFTER decreasing the key
   procedure ddsrt_fibheap_decrease_key
     (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t;
      vnode : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_fibheap_decrease_key";

end CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
