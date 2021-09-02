pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsrt_io_h is

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
  -- * @brief Write a formatted string to a newly allocated buffer.
  --  

   function ddsrt_vasprintf
     (strp : System.Address;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/io.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_vasprintf";

  --*
  -- * @brief Write a formatted string to a newly allocated buffer.
  --  

   function ddsrt_asprintf (strp : System.Address; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/io.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_asprintf";

end CycloneDDS.Low_Level.dds_ddsrt_io_h;
