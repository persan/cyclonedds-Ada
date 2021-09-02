pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.idlc_options_h is

   IDLC_NO_MEMORY : constant := (-1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:21
   IDLC_BAD_OPTION : constant := (-2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:22
   IDLC_NO_ARGUMENT : constant := (-3);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:23
   IDLC_BAD_ARGUMENT : constant := (-4);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:24

  -- * Copyright(c) 2020 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   type idlc_option;
   subtype idlc_option_t is idlc_option;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:26

  --*< flag-only, i.e. (sub)option without argument  
   type anon15163_enum15165 is 
     (IDLC_FLAG,
      IDLC_STRING,
      IDLC_FUNCTION)
   with Convention => C;
   type anon15163_union15166 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            flag : access int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:34
         when 1 =>
            string : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:35
         when others =>
            c_function : access function (arg1 : access constant idlc_option_t; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:36
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type idlc_option is record
      c_type : anon15163_enum15165;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:32
      store : aliased anon15163_union15166;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:37
      option : aliased char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:38
      suboption : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:39
      argument : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:40
      help : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idlc/options.h:27

  --*< option, i.e. "o" in "-o". "-h" is reserved  
  --*< name of suboption, i.e. "mount" in "-o mount"  
end CycloneDDS.Low_Level.idlc_options_h;
