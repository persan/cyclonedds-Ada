pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Idl.Retcode is

   IDL_RETCODE_OK : constant := (0);  --  /usr/gnat/include/idl/retcode.h:24

   IDL_RETCODE_PUSH_MORE : constant :=
     (-1);  --  /usr/gnat/include/idl/retcode.h:26

   IDL_RETCODE_NEED_REFILL : constant :=
     (-2);  --  /usr/gnat/include/idl/retcode.h:28

   IDL_RETCODE_SYNTAX_ERROR : constant :=
     (-3);  --  /usr/gnat/include/idl/retcode.h:30

   IDL_RETCODE_SEMANTIC_ERROR : constant :=
     (-4);  --  /usr/gnat/include/idl/retcode.h:32

   IDL_RETCODE_NO_MEMORY : constant :=
     (-5);  --  /usr/gnat/include/idl/retcode.h:34

   IDL_RETCODE_ILLEGAL_EXPRESSION : constant :=
     (-6);  --  /usr/gnat/include/idl/retcode.h:36

   IDL_RETCODE_OUT_OF_RANGE : constant :=
     (-7);  --  /usr/gnat/include/idl/retcode.h:38

   IDL_RETCODE_NO_ACCESS : constant :=
     (-8);  --  /usr/gnat/include/idl/retcode.h:40

   IDL_RETCODE_NO_ENTRY : constant :=
     (-9);  --  /usr/gnat/include/idl/retcode.h:42

   IDL_RETCODE_NO_SPACE : constant :=
     (-10);  --  /usr/gnat/include/idl/retcode.h:44

   IDL_RETCODE_BAD_FORMAT : constant :=
     (-11);  --  /usr/gnat/include/idl/retcode.h:46

   IDL_RETCODE_BAD_PARAMETER : constant :=
     (-12);  --  /usr/gnat/include/idl/retcode.h:48

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

   subtype idl_retcode_t is int;

   --*
   -- * @name IDL_Return_Code
   --

   --* @{
   --* Success
   --* Push more tokens
   --* Processor needs refill in order to continue
   --* Syntax error
   --* Semantic error
   --* Operation failed due to lack of resources
   --*
   --*
   --* Permission denied
   --* No such file or directory
   --* Operation failed due to lack of disk space
   --*
   --*
   --* @}
end CycloneDDS.Idl.Retcode;
