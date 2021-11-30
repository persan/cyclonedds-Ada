pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

with System;

package CycloneDDS.Idl.Symbol is

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

   --  <>type idl_file;
   --  <>subtype idl_file_t is idl_file;

   type idl_file_t is record
      next : access idl_file_t;
      name : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_source;
      --  <>subtype idl_source_t is idl_source;

   type idl_source_t is record
      parent               : access constant idl_source_t;
      previous             : access idl_source_t;
      next                 : access idl_source_t;
      includes             : access idl_source_t;
      additional_directory : aliased Extensions.bool;
      path                 : access constant idl_file_t;
      file                 : access constant idl_file_t;
   end record with
      Convention => C_Pass_By_Copy;

      --*< file does not reside in working directory
      --*< normalized path of filename in #line directive
      --*< filename in #line directive
   type idl_position_t is record
      source : access constant idl_source_t;
      file   : access constant idl_file_t;
      line   : aliased unsigned;
      column : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- for error reporting purposes, the "filename" provided in the #line
      --     directive must be kept. on includes, idlpp provides a (relative) filename
   --     with the proper flags, which becomes the source. user provided #line
      --     directives in the file are used merely for error reporting

      --*< (alternate) filename in latest #line directive
      --  <>subtype idl_position_t is idl_position;

   type idl_location_t is record
      first : aliased idl_position_t;
      last  : aliased idl_position_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype idl_location_t is idl_location;

      -- symbols are there for the parser(s), nodes are there for the tree.
      --   all nodes are symbols, not all symbols are nodes

      --  <>type idl_symbol;
      --  <>subtype idl_symbol_t is idl_symbol;

   type idl_symbol_t is record
      location : aliased idl_location_t;
   end record with
      Convention => C_Pass_By_Copy;

   function idl_location
     (symbol : System.Address) return access constant idl_location_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_location";

end CycloneDDS.Idl.Symbol;
