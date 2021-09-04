pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

with System;

package CycloneDDS.Low_Level.idl_symbol_h is

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

   type idl_file;
   subtype idl_file_t is idl_file;  -- /usr/gnat/include/idl/symbol.h:21

   type idl_file is record
      next : access idl_file_t;  -- /usr/gnat/include/idl/symbol.h:23
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/idl/symbol.h:24
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/symbol.h:22

   type idl_source;
   subtype idl_source_t is idl_source;  -- /usr/gnat/include/idl/symbol.h:27

   type idl_source is record
      parent : access constant idl_source_t;  -- /usr/gnat/include/idl/symbol.h:29
      previous : access idl_source_t;  -- /usr/gnat/include/idl/symbol.h:30
      next : access idl_source_t;  -- /usr/gnat/include/idl/symbol.h:30
      includes : access idl_source_t;  -- /usr/gnat/include/idl/symbol.h:31
      additional_directory : aliased Extensions.bool;  -- /usr/gnat/include/idl/symbol.h:32
      path : access constant idl_file_t;  -- /usr/gnat/include/idl/symbol.h:33
      file : access constant idl_file_t;  -- /usr/gnat/include/idl/symbol.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/symbol.h:28

  --*< file does not reside in working directory  
  --*< normalized path of filename in #line directive  
  --*< filename in #line directive  
   type idl_position is record
      source : access constant idl_source_t;  -- /usr/gnat/include/idl/symbol.h:38
      file : access constant idl_file_t;  -- /usr/gnat/include/idl/symbol.h:43
      line : aliased unsigned;  -- /usr/gnat/include/idl/symbol.h:44
      column : aliased unsigned;  -- /usr/gnat/include/idl/symbol.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/symbol.h:37

  -- for error reporting purposes, the "filename" provided in the #line
  --     directive must be kept. on includes, idlpp provides a (relative) filename
  --     with the proper flags, which becomes the source. user provided #line
  --     directives in the file are used merely for error reporting  

  --*< (alternate) filename in latest #line directive  
   subtype idl_position_t is idl_position;  -- /usr/gnat/include/idl/symbol.h:46

   type idl_location is record
      first : aliased idl_position_t;  -- /usr/gnat/include/idl/symbol.h:49
      last : aliased idl_position_t;  -- /usr/gnat/include/idl/symbol.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/symbol.h:48

   subtype idl_location_t is idl_location;  -- /usr/gnat/include/idl/symbol.h:51

  -- symbols are there for the parser(s), nodes are there for the tree.
  --   all nodes are symbols, not all symbols are nodes  

   type idl_symbol;
   subtype idl_symbol_t is idl_symbol;  -- /usr/gnat/include/idl/symbol.h:56

   type idl_symbol is record
      location : aliased idl_location_t;  -- /usr/gnat/include/idl/symbol.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/symbol.h:57

   function idl_location (symbol : System.Address) return access constant idl_location_t  -- /usr/gnat/include/idl/symbol.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "idl_location";

end CycloneDDS.Low_Level.idl_symbol_h;
