pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;



package CycloneDDS.Low_Level.dds_ddsrt_atomics_h is

   DDSRT_HAVE_ATOMIC64 : constant := 1;  --  /usr/gnat/include/dds/ddsrt/atomics.h:38
   --  arg-macro: procedure DDSRT_ATOMIC_UINT32_INIT (v)
   --    { (v) }
   --  arg-macro: procedure DDSRT_ATOMIC_UINT64_INIT (v)
   --    { (v) }
   --  arg-macro: procedure DDSRT_ATOMIC_UINTPTR_INIT (v)
   --    { (v) }
   --  arg-macro: procedure DDSRT_ATOMIC_VOIDP_INIT (v)
   --    { (uintptr_t) (v) }

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

  --*
  -- * @brief Types on which atomic operations are defined.
  -- *
  -- * @note 64-bit types are defined even if atomic operations on them are not
  -- *       really supported. atomic
  --  

   type ddsrt_atomic_uint32_t is record
      v : aliased unsigned;  -- /usr/gnat/include/dds/ddsrt/atomics.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/atomics.h:32

   type ddsrt_atomic_uint64_t is record
      v : aliased unsigned_long;  -- /usr/gnat/include/dds/ddsrt/atomics.h:33
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/atomics.h:33

   type ddsrt_atomic_uintptr_t is record
      v : aliased CycloneDDS.Low_Level.stdint_h.uintptr_t;  -- /usr/gnat/include/dds/ddsrt/atomics.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/atomics.h:34

   subtype ddsrt_atomic_voidp_t is ddsrt_atomic_uintptr_t;  -- /usr/gnat/include/dds/ddsrt/atomics.h:35

  --*
  -- * @brief Initializers for the types on which atomic operations are defined.
  --  

  -- 64-bit atomics are not supported by all hardware, but it would be a shame not to use them when
  --   they are available.  That necessitates an alternative implementation when they are not, either in
  --   the form of a different implementation where it is used, or as an emulation using a mutex in
  --   ddsrt.  It seems that the places where they'd be used end up adding a mutex, so an emulation in
  --   ddsrt while being able to check whether it is supported by hardware is a sensible approach.   

   procedure ddsrt_atomics_init  -- /usr/gnat/include/dds/ddsrt/atomics.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomics_init";

   procedure ddsrt_atomics_fini  -- /usr/gnat/include/dds/ddsrt/atomics.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomics_fini";

end CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
