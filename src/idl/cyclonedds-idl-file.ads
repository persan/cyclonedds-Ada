pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.Idl_Retcode_H;

package CycloneDDS.Idl.File is

   function Is_Separator (Chr : Character) return Boolean;

   function Is_Absolute (Path : String) return Boolean;

   function Current_Path return String;

   function Normalize_Path (Path : String) return String;

   function Relative_Path (Base : String; Path : String) return String;

end CycloneDDS.Idl.File;
