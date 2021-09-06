with CycloneDDS.Low_Level.Idl_Processor_H;
with CycloneDDS.Low_Level.Idlc_Options_H;
with System;
with Interfaces.C;
package Idlada is
   use  CycloneDDS.Low_Level.Idl_Processor_H;
   use CycloneDDS.Low_Level.Idlc_Options_H;
   type Idlc_Option_T_Access is access all Idlc_Option_T;
   function Generator_Options return access Idlc_Option_T_Access with
     Export        => True,
     Convention    => C,
     External_Name => "generator_options";

   type Idl_Builtin_Annotation_T_Access is access all Idl_Builtin_Annotation_T;
   function Generator_Annotations
     return access Idl_Builtin_Annotation_T_Access with
     Export        => True,
     Convention    => C,
     External_Name => "generator_annotations";
   function Generate
     (Arg1 : access constant CycloneDDS.Low_Level.Idl_Processor_H.Idl_Pstate_T)
      return Interfaces.C.Int with
     Export        => True,
     Convention    => C,
     External_Name => "generate";
end Idlada;
