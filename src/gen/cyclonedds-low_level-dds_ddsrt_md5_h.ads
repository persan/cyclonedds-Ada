pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_md5_h is

  -- Minimal changes introduced, for which:  
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

  --  Copyright (C) 1999, 2002 Aladdin Enterprises.  All rights reserved.
  --  This software is provided 'as-is', without any express or implied
  --  warranty.  In no event will the authors be held liable for any damages
  --  arising from the use of this software.
  --  Permission is granted to anyone to use this software for any purpose,
  --  including commercial applications, and to alter it and redistribute it
  --  freely, subject to the following restrictions:
  --  1. The origin of this software must not be misrepresented; you must not
  --     claim that you wrote the original software. If you use this software
  --     in a product, an acknowledgment in the product documentation would be
  --     appreciated but is not required.
  --  2. Altered source versions must be plainly marked as such, and must not be
  --     misrepresented as being the original software.
  --  3. This notice may not be removed or altered from any source distribution.
  --  L. Peter Deutsch
  --  ghost@aladdin.com
  --  

  -- $Id: md5.h,v 1.4 2002/04/13 19:20:28 lpd Exp $  
  --  Independent implementation of MD5 (RFC 1321).
  --  This code implements the MD5 Algorithm defined in RFC 1321, whose
  --  text is available at
  --        http://www.ietf.org/rfc/rfc1321.txt
  --  The code is derived from the text of the RFC, including the test suite
  --  (section A.5) but excluding the rest of Appendix A.  It does not include
  --  any code or documentation that is identified in the RFC as being
  --  copyrighted.
  --  The original and principal author of md5.h is L. Peter Deutsch
  --  <ghost@aladdin.com>.  Other authors are noted in the change history
  --  that follows (in reverse chronological order):
  --  2002-04-13 lpd Removed support for non-ANSI compilers; removed
  --        references to Ghostscript; clarified derivation from RFC 1321;
  --        now handles byte order either statically or dynamically.
  --  1999-11-04 lpd Edited comments slightly for automatic TOC extraction.
  --  1999-10-18 lpd Fixed typo in header comment (ansi2knr rather than md5);
  --        added conditionalization for C++ compilation from Martin
  --        Purschke <purschke@bnl.gov>.
  --  1999-05-03 lpd Original version.
  --  

  -- * This package supports both compile-time and run-time determination of CPU
  -- * byte order.  If ARCH_IS_BIG_ENDIAN is defined as 0, the code will be
  -- * compiled to run only on little-endian CPUs; if ARCH_IS_BIG_ENDIAN is
  -- * defined as non-zero, the code will be compiled to run only on big-endian
  -- * CPUs; if ARCH_IS_BIG_ENDIAN is not defined, the code will be compiled to
  -- * run on either big- or little-endian CPUs, but will run slightly less
  -- * efficiently on either one than if ARCH_IS_BIG_ENDIAN is defined.
  --  

  -- 8-bit byte  
   subtype ddsrt_md5_byte_t is unsigned_char;  -- /usr/gnat/include/dds/ddsrt/md5.h:78

  -- 32-bit word  
   subtype ddsrt_md5_word_t is unsigned;  -- /usr/gnat/include/dds/ddsrt/md5.h:79

  -- Define the state of the MD5 Algorithm.  
  -- message length in bits, lsw first  
   type anon3722_array3723 is array (0 .. 1) of aliased ddsrt_md5_word_t;
   type anon3722_array3724 is array (0 .. 3) of aliased ddsrt_md5_word_t;
   type anon3722_array3726 is array (0 .. 63) of aliased ddsrt_md5_byte_t;
   type ddsrt_md5_state_s is record
      count : aliased anon3722_array3723;  -- /usr/gnat/include/dds/ddsrt/md5.h:83
      abcd : aliased anon3722_array3724;  -- /usr/gnat/include/dds/ddsrt/md5.h:84
      buf : aliased anon3722_array3726;  -- /usr/gnat/include/dds/ddsrt/md5.h:85
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/md5.h:82

  -- digest buffer  
  -- accumulate block  
   subtype ddsrt_md5_state_t is ddsrt_md5_state_s;  -- /usr/gnat/include/dds/ddsrt/md5.h:86

  -- Initialize the algorithm.  
   procedure ddsrt_md5_init (pms : access ddsrt_md5_state_t)  -- /usr/gnat/include/dds/ddsrt/md5.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_md5_init";

  -- Append a string to the message.  
   procedure ddsrt_md5_append
     (pms : access ddsrt_md5_state_t;
      data : access ddsrt_md5_byte_t;
      nbytes : unsigned)  -- /usr/gnat/include/dds/ddsrt/md5.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_md5_append";

  -- Finish the message and return the digest.  
   procedure ddsrt_md5_finish (pms : access ddsrt_md5_state_t; digest : access ddsrt_md5_byte_t)  -- /usr/gnat/include/dds/ddsrt/md5.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_md5_finish";

  -- end extern "C"  
end CycloneDDS.Low_Level.dds_ddsrt_md5_h;
