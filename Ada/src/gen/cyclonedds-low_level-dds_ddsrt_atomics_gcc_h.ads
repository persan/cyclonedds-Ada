pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;


with System;

package CycloneDDS.Low_Level.dds_ddsrt_atomics_gcc_h is

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

  -- LD, ST  
   function ddsrt_atomic_ld32 (x : access constant CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_ld32";

   function ddsrt_atomic_ld64 (x : access constant CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_ld64";

   function ddsrt_atomic_ldptr (x : access constant CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uintptr_t) return CycloneDDS.Low_Level.stdint_h.uintptr_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_ldptr";

   function ddsrt_atomic_ldvoidp (x : access constant CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_ldvoidp";

   procedure ddsrt_atomic_st32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_st32";

   procedure ddsrt_atomic_st64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_st64";

   procedure ddsrt_atomic_stptr (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uintptr_t; v : CycloneDDS.Low_Level.stdint_h.uintptr_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_stptr";

   procedure ddsrt_atomic_stvoidp (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t; v : System.Address)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_stvoidp";

  -- INC  
   procedure ddsrt_atomic_inc32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_inc32";

   procedure ddsrt_atomic_inc64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_inc64";

   function ddsrt_atomic_inc32_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_inc32_ov";

   function ddsrt_atomic_inc32_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_inc32_nv";

   function ddsrt_atomic_inc64_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_inc64_nv";

  -- DEC  
   procedure ddsrt_atomic_dec32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_dec32";

   procedure ddsrt_atomic_dec64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_dec64";

   function ddsrt_atomic_dec32_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_dec32_nv";

   function ddsrt_atomic_dec64_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_dec64_nv";

   function ddsrt_atomic_dec32_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_dec32_ov";

   function ddsrt_atomic_dec64_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_dec64_ov";

  -- ADD  
   procedure ddsrt_atomic_add32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_add32";

   procedure ddsrt_atomic_add64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_add64";

   function ddsrt_atomic_add32_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_add32_ov";

   function ddsrt_atomic_add32_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_add32_nv";

   function ddsrt_atomic_add64_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_add64_nv";

  -- SUB  
   procedure ddsrt_atomic_sub32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_sub32";

   procedure ddsrt_atomic_sub64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_sub64";

   function ddsrt_atomic_sub32_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_sub32_ov";

   function ddsrt_atomic_sub32_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_sub32_nv";

   function ddsrt_atomic_sub64_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_sub64_nv";

  -- AND  
   procedure ddsrt_atomic_and32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_and32";

   procedure ddsrt_atomic_and64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_and64";

   function ddsrt_atomic_and32_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_and32_ov";

   function ddsrt_atomic_and64_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_and64_ov";

   function ddsrt_atomic_and32_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_and32_nv";

   function ddsrt_atomic_and64_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_and64_nv";

  -- OR  
   procedure ddsrt_atomic_or32 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_or32";

   procedure ddsrt_atomic_or64 (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_or64";

   function ddsrt_atomic_or32_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_or32_ov";

   function ddsrt_atomic_or64_ov (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_or64_ov";

   function ddsrt_atomic_or32_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t; v : unsigned) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_or32_nv";

   function ddsrt_atomic_or64_nv (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t; v : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_or64_nv";

  -- CAS  
   function ddsrt_atomic_cas32
     (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;
      exp : unsigned;
      des : unsigned) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_cas32";

   function ddsrt_atomic_cas64
     (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t;
      exp : unsigned_long;
      des : unsigned_long) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_cas64";

   function ddsrt_atomic_casptr
     (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uintptr_t;
      exp : CycloneDDS.Low_Level.stdint_h.uintptr_t;
      des : CycloneDDS.Low_Level.stdint_h.uintptr_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_casptr";

   function ddsrt_atomic_casvoidp
     (x : access CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;
      exp : System.Address;
      des : System.Address) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_casvoidp";

  -- FENCES  
   procedure ddsrt_atomic_fence  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_fence";

   procedure ddsrt_atomic_fence_ldld  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_fence_ldld";

   procedure ddsrt_atomic_fence_stst  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_fence_stst";

   procedure ddsrt_atomic_fence_acq  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_fence_acq";

   procedure ddsrt_atomic_fence_rel  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/atomics/gcc.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomic_fence_rel";

end CycloneDDS.Low_Level.dds_ddsrt_atomics_gcc_h;
