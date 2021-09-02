pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;


package CycloneDDS.Low_Level.dds_ddsrt_strtol_h is

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
  -- * @brief Convert a character to an integer value
  -- *
  -- * Translates the numeric value of the provided character. For characters in range
  -- * '0' to '9' the returned integer value is 0-9. For the range 'a' to 'z' and 'A'
  -- * to 'Z', the numeric return value is 10-36.
  -- *
  -- * @param[in] chr   The character
  -- *
  -- * @returns The integer value for the character, or -1 in case @chr cannot be translated to a numeric value
  --  

   function ddsrt_todigit (chr : int) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_todigit";

  --*
  -- * @brief Convert a string to a long long integer.
  -- *
  -- * Translate @str to a long long integer considering base, and sign. If @base
  -- * is 0, base is determined from @str. A prefix of "0x" or "0X" will cause the
  -- * number be read in base 16 (hexadecimal), otherwise base 10 (decimal) is
  -- * used, unless the first character is '0', in which case the number will be
  -- * read in base 8 (octal).
  -- *
  -- * @param[in]   str     String to convert into a number.
  -- * @param[out]  endptr  If not NULL, a char* where the address of first invalid
  -- *                      character is stored.
  -- * @param[in]   base    Base to use. Must be a base between 2 and 36, or 0 to
  -- *                      determine from @str.
  -- * @param[out]  llng    A long long integer where the number is stored.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             String successfully converted to an integer.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Base is invalid.
  -- * @retval DDS_RETCODE_OUT_OF_RANGE
  -- *             String converted to an integer, but was out of range.
  --  

   function ddsrt_strtoll
     (str : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      base : int;
      llng : access Long_Long_Integer) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtoll";

  --*
  -- * @brief Convert a string to an unsigned long long integer.
  -- *
  -- * Translate @str to an unsigned long long integer considering base, and sign.
  -- * If @base is 0, base is determined from @str. A prefix of "0x" or "0X" will
  -- * cause the number be read in base 16 (hexadecimal), otherwise base 10
  -- * (decimal) is used, unless the first character is '0', in which case the
  -- * number will be read in base 8 (octal).
  -- *
  -- * @param[in]   str     String to convert into a number.
  -- * @param[out]  endptr  If not NULL, a char* where the address of first invalid
  -- *                      character is stored.
  -- * @param[in]   base    Base to use. Must be a base between 2 and 36, or 0 to
  -- *                      determine from @str.
  -- * @param[out]  ullng   A long long integer where the number is stored.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             String successfully converted to an integer.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Base is invalid.
  -- * @retval DDS_RETCODE_OUT_OF_RANGE
  -- *             String converted to an integer, but was out of range.
  --  

   function ddsrt_strtoull
     (str : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      base : int;
      ullng : access Extensions.unsigned_long_long) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtoull";

  --*
  -- * @brief Convert a string to a long long integer.
  -- *
  -- * @param[in]  str   String to convert into a long long integer.
  -- * @param[in]  llng  A long long integer where the number is stored.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             String successfully converted to an integer.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Base is invalid.
  -- * @retval DDS_RETCODE_OUT_OF_RANGE
  -- *             String converted to an integer, but was out of range.
  --  

   function ddsrt_atoll (str : Interfaces.C.Strings.chars_ptr; llng : access Long_Long_Integer) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atoll";

  --*
  -- * @brief Convert a string to an unsigned long long integer.
  -- *
  -- * @param[in]   str    String to conver into an unsigned long long integer.
  -- * @param[out]  ullng  An unsigned long long integer where the number is stored.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             String successfully converted to an integer.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Base is invalid.
  -- * @retval DDS_RETCODE_OUT_OF_RANGE
  -- *             String converted to an integer, but was out of range.
  --  

   function ddsrt_atoull (str : Interfaces.C.Strings.chars_ptr; ullng : access Extensions.unsigned_long_long) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atoull";

  --*
  -- * @brief Convert a long long integer into a string.
  -- *
  -- * @param[in]   num     Long long integer to convert into a string.
  -- * @param[in]   str     Buffer where string representation is written.
  -- * @param[in]   len     Number of bytes available in buffer.
  -- * @param[out]  endptr  A char* where the address of the null terminating byte
  -- *                      is stored.
  -- *
  -- * @returns The value of @str on success, otherwise NULL.
  --  

   function ddsrt_lltostr
     (num : Long_Long_Integer;
      str : Interfaces.C.Strings.chars_ptr;
      len : unsigned_long;
      endptr : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_lltostr";

  --*
  -- * @brief Convert an unsigned long long integer into a string.
  -- *
  -- * @param[in]   num     Unsigned long long integer to covert into a string.
  -- * @param[in]   str     Buffer where string representation is stored.
  -- * @param[in]   len     Number of bytes available in buffer.
  -- * @param[out]  endptr  A char* where the adress of the null terminating byte
  -- *                      is stored.
  -- *
  -- * @returns The value of @str on success, otherwise NULL.
  --  

   function ddsrt_ulltostr
     (num : Extensions.unsigned_long_long;
      str : Interfaces.C.Strings.chars_ptr;
      len : unsigned_long;
      endptr : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/strtol.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ulltostr";

end CycloneDDS.Low_Level.dds_ddsrt_strtol_h;
