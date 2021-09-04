pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;


package CycloneDDS.Low_Level.dds_ddsrt_strtod_h is

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
  -- * @file strtod.h
  -- * @brief Floating-point number to/from string conversion functions.
  -- *
  -- * Locale independent versions of the floating-point number conversion
  -- * functions found in the standard library.
  --  

  --*
  -- * @brief Convert a string to a double precision floating point number.
  -- *
  -- * @param[in]   nptr    A string to convert into a double.
  -- * @param[out]  endptr  If not NULL, a char* where the address of first invalid
  -- *                      character is stored.
  -- * @param[out]  dblptr  A double where the result is stored.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  --  

   function ddsrt_strtod
     (nptr : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      dblptr : access double) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsrt/strtod.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtod";

  --*
  -- * @brief Convert a string to a floating point number.
  -- *
  -- * @param[in]   nptr    A string to convert into a float.
  -- * @param[in]   endptr  If not NULL, a char* where the address of first invalid
  -- *                      character is stored.
  -- * @param[out]  fltptr  A float where the floating-point number is stored.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  --  

   function ddsrt_strtof
     (nptr : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      fltptr : access float) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsrt/strtod.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtof";

  --*
  -- * @brief Convert a double-precision floating-point number to a string.
  -- *
  -- * @param[in]  src   Double-precision floating-point number to convert.
  -- * @param[in]  str   Buffer where string representation is written.
  -- * @param[in]  size  Number of bytes available in @str.
  -- *
  -- * @returns The number of bytes written (excluding the null terminating byte).
  --  

   function ddsrt_dtostr
     (src : double;
      str : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return int  -- /usr/gnat/include/dds/ddsrt/strtod.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_dtostr";

  --*
  -- * @brief convert a floating-point number to a string.
  -- *
  -- * @param[in]  src   Floating-point number to conver.
  -- * @param[in]  str   Buffer where string representation is written.
  -- * @param[in]  size  Number of bytes available in @str.
  -- *
  -- * @returns The number of bytes written (exluding the null terminating byte).
  --  

   function ddsrt_ftostr
     (src : float;
      str : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return int  -- /usr/gnat/include/dds/ddsrt/strtod.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ftostr";

end CycloneDDS.Low_Level.dds_ddsrt_strtod_h;
