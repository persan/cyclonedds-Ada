pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_string_h is

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
  -- * @brief Compare two strings ignoring case.
  -- *
  -- * @param[in]  s1  String to compare.
  -- * @param[in]  s2  String to compare.
  -- *
  -- * @returns Zero if @s1 and @s2 match, a negative integer if @s1 is less than
  -- *          @s2 or a positive integer if @s1 is greater than @s2.
  --  

   function ddsrt_strcasecmp (s1 : Interfaces.C.Strings.chars_ptr; s2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/gnat/include/dds/ddsrt/string.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strcasecmp";

  --*
  -- * @brief Compare two strings ignoring case, but no more than @n bytes.
  -- *
  -- * @param[in]  s1  String to compare.
  -- * @param[in]  s2  String to compare.
  -- * @param[in]  n   Maximum number of bytes to compare.
  -- *
  -- * @returns Zero if @s1 and @s2 match, a negative integer if @s1 is less than
  -- *          @s2 or a positive integer if @s1 is greater than @s2.
  --  

   function ddsrt_strncasecmp
     (s1 : Interfaces.C.Strings.chars_ptr;
      s2 : Interfaces.C.Strings.chars_ptr;
      n : unsigned_long) return int  -- /usr/gnat/include/dds/ddsrt/string.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strncasecmp";

  --*
  -- * @brief Extract token from string.
  -- *
  -- * Finds the first token in @stringp delimited by one of the characters in
  -- * @delim. The delimiter is overwritten with a null byte, terminating the
  -- * token and @stringp is updated to point past the delimiter.
  -- *
  -- * @param[in,out] stringp  String to extract token from.
  -- * @param[in]     delim    Characters that delimit a token.
  -- *
  -- * @returns The original value of @stringp.
  --  

   function ddsrt_strsep (stringp : System.Address; delim : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/dds/ddsrt/string.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strsep";

  --*
  -- * @brief Duplicate block of memory.
  -- *
  -- * Copy a block of memory into a newly allocated block of memory. The memory
  -- * is obtained with @ddsrt_malloc and must be freed with @ddsrt_free when it
  -- * is no longer used.
  -- *
  -- * @param[in]  ptr  Pointer to block of memory to duplicate.
  -- * @param[in]  len  Number of bytes to copy into newly allocated buffer.
  -- *
  -- * @returns A new block of memory that is a duplicate of the block pointed to
  -- *          by @ptr or NULL if not enough memory was available.
  --  

   function ddsrt_memdup (ptr : System.Address; len : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/string.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_memdup";

  --*
  -- * @brief Duplicate string.
  -- *
  -- * Copy string into a newly allocated block of memory. The memory is obtained
  -- * with @ddsrt_malloc and must be freed with @ddsrt_free when it is no longer
  -- * used.
  -- *
  -- * @param[in]  str  String to duplicate.
  -- *
  -- * @returns A new string that is a duplicate of @str or NULL if not enough
  -- *          memory was available.
  --  

   function ddsrt_strdup (str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/dds/ddsrt/string.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strdup";

  --*
  -- * @brief Duplicate at most @len bytes of string @str.
  -- *
  -- * Copy at most @len number of bytes into a newly allocated block of memory.
  -- * The memory is obtained with @ddsrt_malloc and must be freed with
  -- * @ddsrt_free when it is no longer used.
  -- *
  -- * @param[in]  str  String to duplicate.
  -- * @param[in]  len  Maximum number of bytes to copy.
  -- *
  -- * @returns A new string that is a duplicate of @str up to @len bytes or NULL
  -- *          if not enough memory was available.
  --  

   function ddsrt_strndup (str : Interfaces.C.Strings.chars_ptr; len : unsigned_long) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/dds/ddsrt/string.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strndup";

  --*
  -- * @brief Copy string.
  -- *
  -- * Copy string to buffer with specified size. The string is truncated if there
  -- * is not enough space. The resulting string is guaranteed to be null
  -- * terminated if there is space.
  -- *
  -- * @param[out]  dest  Destination buffer.
  -- * @param[in]   src   Null terminated string to copy to dest.
  -- * @param[in]   size  Number of bytes available in dest.
  -- *
  -- * @returns Number of characters copied to dest (excluding the null byte), or
  -- *          the number of characters that would have been copied if dest is not
  -- *          sufficiently large enough.
  --  

   function ddsrt_strlcpy
     (dest : Interfaces.C.Strings.chars_ptr;
      src : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return unsigned_long  -- /usr/gnat/include/dds/ddsrt/string.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strlcpy";

  --*
  -- * @brief Concatenate strings.
  -- *
  -- * Append the string specified by src to the string specified by dest. The
  -- * terminating null byte at the end of dest is overwritten. The resulting
  -- * string is truncated if there is not enough space. The resulting string
  -- * guaranteed to be null terminated if there is space.
  -- *
  -- * @param[in,out] dest  Destination buffer.
  -- * @param[in]     src   Null terminated string to append to dest.
  -- * @param[in]     size  Number of bytes available in dest.
  -- *
  -- * @returns Number of characters copied to dest (excluding the null byte), or
  -- *          the number of characters that would have been copied if dest is not
  -- *          sufficiently large enough.
  --  

   function ddsrt_strlcat
     (dest : Interfaces.C.Strings.chars_ptr;
      src : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return unsigned_long  -- /usr/gnat/include/dds/ddsrt/string.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strlcat";

  --*
  -- * @brief Get description for specified system error number.
  -- *
  -- * @param[in]  errnum  System error number.
  -- * @param[in]  buf     Buffer where description is copied to.
  -- * @param[in]  buflen  Number of bytes available in @buf.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             Description for @errnum was successfully copied to @buf.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Unknown error number.
  -- * @retval DDS_RETCODE_NOT_ENOUGH_SPACE
  -- *             Buffer was not large enough to hold the description.
  --  

   function ddsrt_strerror_r
     (errnum : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : unsigned_long) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsrt/string.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strerror_r";

  --*
  -- * @brief Replace substring of null terminated string
  -- *
  -- * @param[in]   str     pointer to string
  -- * @param[in]   srch    non-empty string to replace
  -- * @param[in]   subst   string to substitute character "srch" with
  -- * @param[in]   max     maximum number of times to replace search, or 0 for unlimited
  -- *
  -- * @returns Pointer to newly allocated string with max occurrences of srch replaced, or
  -- * NULL on allocation failure or if srch is an empty string.
  --  

   function ddsrt_str_replace
     (str : Interfaces.C.Strings.chars_ptr;
      srch : Interfaces.C.Strings.chars_ptr;
      subst : Interfaces.C.Strings.chars_ptr;
      max : unsigned_long) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/dds/ddsrt/string.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_str_replace";

end CycloneDDS.Low_Level.dds_ddsrt_string_h;
