pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;

package CycloneDDS.Low_Level.idl_stream_h is

  -- * Copyright(c) 2021 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   function idl_fopen (pathname : Interfaces.C.Strings.chars_ptr; mode : Interfaces.C.Strings.chars_ptr) return access CycloneDDS.Low_Level.bits_types_FILE_h.FILE  -- /usr/gnat/include/idl/stream.h:21
   with Import => True, 
        Convention => C, 
        External_Name => "idl_fopen";

   function idl_fprintf (fp : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/gnat/include/idl/stream.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "idl_fprintf";

   function idl_vfprintf
     (fp : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/gnat/include/idl/stream.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "idl_vfprintf";

end CycloneDDS.Low_Level.idl_stream_h;
