pragma Ada_2022;
with Ada.Text_IO;
package body Idlada is
   use Ada.Text_IO;
   -----------------------
   -- Generator_Options --
   -----------------------
   Opts : aliased Idlc_Option_T_Access;
   function Generator_Options return access Idlc_Option_T_Access is
   begin
      return Opts'Access;
   end Generator_Options;

   ---------------------------
   -- Generator_Annotations --
   ---------------------------

   function Generator_Annotations return access Idl_Builtin_Annotation_T_Access is
   begin
      return
        raise Program_Error
          with "Unimplemented function Generator_Annotations";
   end Generator_Annotations;

   --------------
   -- Generate --
   --------------

   function Generate
     (Arg1 : access constant CycloneDDS.Low_Level.Idl_Processor_H.Idl_Pstate_T)
      return Interfaces.C.Int
   is
   begin
      return 0;
   end Generate;

end Idlada;
