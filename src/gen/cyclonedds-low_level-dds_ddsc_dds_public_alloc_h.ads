pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h is

   DDS_FREE_KEY_BIT : constant :=
     16#01#;  --  /usr/gnat/include/dds/ddsc/dds_public_alloc.h:35
   DDS_FREE_CONTENTS_BIT : constant :=
     16#02#;  --  /usr/gnat/include/dds/ddsc/dds_public_alloc.h:36
   DDS_FREE_ALL_BIT : constant :=
     16#04#;  --  /usr/gnat/include/dds/ddsc/dds_public_alloc.h:37

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

   -- TODO: do we really need to expose this as an API?
   --* @file
   -- *
   -- * @brief DDS C Allocation API
   -- *
   -- * This header file defines the public API of allocation convenience functions
   -- * in the Eclipse Cyclone DDS C language binding.
   --

   subtype dds_free_op_t is unsigned;
   DDS_FREE_ALL      : constant dds_free_op_t := 7;
   DDS_FREE_CONTENTS : constant dds_free_op_t := 3;
   DDS_FREE_KEY      : constant dds_free_op_t := 1;

   -- Behaviour as C library malloc, realloc and free
   type dds_allocator_t is record
      malloc  : access function (arg1 : unsigned_long) return System.Address;
      realloc : access function
        (arg1 : System.Address; arg2 : unsigned_long) return System.Address;
      free : access procedure (arg1 : System.Address);
   end record with
      Convention => C_Pass_By_Copy;

      -- if needed
      --  <>subtype dds_allocator_t is dds_allocator;

   function dds_alloc (size : unsigned_long) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "dds_alloc";

   function dds_realloc
     (ptr : System.Address; size : unsigned_long) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "dds_realloc";

   function dds_realloc_zero
     (ptr : System.Address; size : unsigned_long) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "dds_realloc_zero";

   procedure dds_free (ptr : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_free";

   type dds_alloc_fn_t is access function
     (arg1 : unsigned_long) return System.Address with
      Convention => C;

   type dds_realloc_fn_t is access function
     (arg1 : System.Address; arg2 : unsigned_long) return System.Address with
      Convention => C;

   type dds_free_fn_t is access procedure (arg1 : System.Address) with
      Convention => C;

   function dds_string_alloc
     (size : unsigned_long) return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "dds_string_alloc";

   function dds_string_dup
     (str : Interfaces.C.Strings.chars_ptr)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "dds_string_dup";

   procedure dds_string_free (str : Interfaces.C.Strings.chars_ptr) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_string_free";

   procedure dds_sample_free
     (sample : System.Address;
      desc   : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_topic_descriptor_t;
      op : dds_free_op_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_sample_free";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h;
