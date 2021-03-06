pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package CycloneDDS.Low_Level.idl_expression_h is

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

   subtype idl_equality_t is int;
   IDL_INVALID  : constant idl_equality_t := -3;
   IDL_MISMATCH : constant idl_equality_t := -2;
   IDL_LESS     : constant idl_equality_t := -1;
   IDL_EQUAL    : constant idl_equality_t := 0;
   IDL_GREATER  : constant idl_equality_t := 1;

   --*< type mismatch
   function idl_compare
     (lhs : System.Address; rhs : System.Address) return idl_equality_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_compare";

end CycloneDDS.Low_Level.idl_expression_h;
