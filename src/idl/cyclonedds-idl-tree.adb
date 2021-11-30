pragma Ada_2012;
package body CycloneDDS.Idl.Tree is

   ------------------------
   -- idl_is_declaration --
   ------------------------

   function idl_is_declaration (Node : Idl_Node_T) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "idl_is_declaration unimplemented");
      return
        raise Program_Error with "Unimplemented function idl_is_declaration";
   end idl_is_declaration;

   -------------------
   -- Idl_Is_Module --
   -------------------

   function Idl_Is_Module (Node : Idl_Module_T) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Idl_Is_Module unimplemented");
      return raise Program_Error with "Unimplemented function Idl_Is_Module";
   end Idl_Is_Module;

end CycloneDDS.Idl.Tree;
