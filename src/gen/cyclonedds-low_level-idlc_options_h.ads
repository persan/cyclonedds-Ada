pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.idlc_options_h is
   type idlc_option_t;

   IDLC_NO_MEMORY : constant := (-1);  --  /usr/gnat/include/idlc/options.h:21
   IDLC_BAD_OPTION : constant := (-2);  --  /usr/gnat/include/idlc/options.h:22
   IDLC_NO_ARGUMENT : constant :=
     (-3);  --  /usr/gnat/include/idlc/options.h:23
   IDLC_BAD_ARGUMENT : constant :=
     (-4);  --  /usr/gnat/include/idlc/options.h:24

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

   --  <>type idlc_option;
   --  <>subtype idlc_option_t is idlc_option;

   --*< flag-only, i.e. (sub)option without argument
   type anon15163_enum15165 is (IDLC_FLAG, IDLC_STRING, IDLC_FUNCTION) with
      Convention => C;
   type anon15163_union15166 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            flag : access int;
         when 1 =>
            string : System.Address;
         when others =>
            c_function : access function
              (arg1 : access constant idlc_option_t;
               arg2 : Interfaces.C.Strings.chars_ptr) return int;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type idlc_option_t is record
      c_type    : anon15163_enum15165;
      store     : aliased anon15163_union15166;
      option    : aliased char;
      suboption : Interfaces.C.Strings.chars_ptr;
      argument  : Interfaces.C.Strings.chars_ptr;
      help      : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      --*< option, i.e. "o" in "-o". "-h" is reserved
      --*< name of suboption, i.e. "mount" in "-o mount"
end CycloneDDS.Low_Level.idlc_options_h;
