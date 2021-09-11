pragma Ada_2022;
with Ada.Text_IO;
with Gnat.Source_Info;
package body Idlada is
   use Ada.Text_IO;
   -----------------------
   -- Generator_Options --
   -----------------------
   Opts : aliased Idlc_Option_T_Access;
   Idl_Annotation : aliased Idl_Builtin_Annotation_T_Access;
   function Generator_Options return access Idlc_Option_T_Access is
   begin
      Ada.Text_IO.Put_Line (GNAT.Source_Info.Enclosing_Entity);
      return Opts'Access;
   end Generator_Options;

   ---------------------------
   -- Generator_Annotations --
   ---------------------------

   function Generator_Annotations return access Idl_Builtin_Annotation_T_Access is
   begin
      Ada.Text_IO.Put_Line (GNAT.Source_Info.Enclosing_Entity);
      return Idl_Annotation'Access;
   end Generator_Annotations;

   --------------
   -- Generate --
   --------------

   function Generate
     (Arg1 : access constant CycloneDDS.Low_Level.Idl_Processor_H.Idl_Pstate_T)
      return Interfaces.C.Int
   is
   begin
      Ada.Text_IO.Put_Line (GNAT.Source_Info.Enclosing_Entity);
      return 0;
   end Generate;

end Idlada;
