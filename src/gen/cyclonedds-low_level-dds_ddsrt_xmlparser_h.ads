pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsrt_xmlparser_h is

   DDSRT_XMLP_REQUIRE_EOF : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/xmlparser.h:40
   DDSRT_XMLP_ANONYMOUS_CLOSE_TAG : constant :=
     2;  --  /usr/gnat/include/dds/ddsrt/xmlparser.h:41
   DDSRT_XMLP_MISSING_CLOSE_AS_EOF : constant :=
     4;  --  /usr/gnat/include/dds/ddsrt/xmlparser.h:42

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

   type ddsrt_xmlp_proc_elem_open_t is access function
     (arg1 : System.Address; arg2 : access unsigned; arg3 : access unsigned;
      arg4 : Interfaces.C.Strings.chars_ptr; arg5 : int) return int with
      Convention => C;

   type ddsrt_xmlp_proc_attr_t is access function
     (arg1 : System.Address; arg2 : access unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr; arg5 : int) return int with
      Convention => C;

   type ddsrt_xmlp_proc_elem_data_t is access function
     (arg1 : System.Address; arg2 : access unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr; arg4 : int) return int with
      Convention => C;

   type ddsrt_xmlp_proc_elem_close_t is access function
     (arg1 : System.Address; arg2 : access unsigned; arg3 : int)
      return int with
      Convention => C;

   type ddsrt_xmlp_error is access procedure
     (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) with
      Convention => C;

   type ddsrt_xmlp_callbacks is record
      elem_open  : ddsrt_xmlp_proc_elem_open_t;
      attr       : ddsrt_xmlp_proc_attr_t;
      elem_data  : ddsrt_xmlp_proc_elem_data_t;
      elem_close : ddsrt_xmlp_proc_elem_close_t;
      error      : ddsrt_xmlp_error;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsrt_xmlp_state is null record;   -- incomplete struct

   function ddsrt_xmlp_new_file
     (fp   : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE;
      varg : System.Address; cb : access constant ddsrt_xmlp_callbacks)
      return access ddsrt_xmlp_state with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_xmlp_new_file";

   function ddsrt_xmlp_new_string
     (string : Interfaces.C.Strings.chars_ptr; varg : System.Address;
      cb     : access constant ddsrt_xmlp_callbacks)
      return access ddsrt_xmlp_state with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_xmlp_new_string";

   procedure ddsrt_xmlp_set_options
     (st : access ddsrt_xmlp_state; options : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_xmlp_set_options";

   function ddsrt_xmlp_get_bufpos
     (st : access constant ddsrt_xmlp_state) return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_xmlp_get_bufpos";

   procedure ddsrt_xmlp_free (st : access ddsrt_xmlp_state) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_xmlp_free";

   function ddsrt_xmlp_parse (st : access ddsrt_xmlp_state) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_xmlp_parse";

end CycloneDDS.Low_Level.dds_ddsrt_xmlparser_h;
