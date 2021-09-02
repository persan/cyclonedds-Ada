pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package CycloneDDS.Low_Level.idl_expression_h is

   subtype idl_equality_t is idl_equality;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/expression.h:17

   subtype idl_equality is int;
   idl_equality_IDL_INVALID : constant idl_equality := -3;
   idl_equality_IDL_MISMATCH : constant idl_equality := -2;
   idl_equality_IDL_LESS : constant idl_equality := -1;
   idl_equality_IDL_EQUAL : constant idl_equality := 0;
   idl_equality_IDL_GREATER : constant idl_equality := 1;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/expression.h:18

   function idl_compare (lhs : System.Address; rhs : System.Address) return idl_equality_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/expression.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "idl_compare";

end CycloneDDS.Low_Level.idl_expression_h;
