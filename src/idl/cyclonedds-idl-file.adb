pragma Ada_2012;
with CycloneDDS.Low_Level.IDL_FILE_H;
package body CycloneDDS.Idl.File is
   use CycloneDDS.Low_Level.IDL_FILE_H;
   use Interfaces.C.Strings;
   ------------------
   -- Is_Separator --
   ------------------

   function Is_Separator (Chr : Character) return Boolean is
   begin
      return Idl_IsSeparator (Character'Pos (Chr)) /= 0;
   end Is_Separator;

   -----------------
   -- Is_Absolute --
   -----------------

   function Is_Absolute (Path : String) return Boolean is
      P : chars_ptr := New_String (Path);
   begin
      return Ret : Boolean do
         Ret := Idl_IsAbsolute (P) /= 0;
         Free (P);
      end return;
   end Is_Absolute;

   ------------------
   -- Current_Path --
   ------------------

   function Current_Path return String is
      R : chars_ptr;
      RetCode : Int;
   begin
      RetCode := Idl_Current_Path (R'Address);
      return Ret : String := Value (R) do
         Free (R);
      end return;
   end Current_Path;

   --------------------
   -- Normalize_Path --
   --------------------

   function Normalize_Path (Path : String) return String is
      P : chars_ptr := New_String (Path);
      R : chars_ptr;
      RetCode : Int;
   begin
      RetCode := Idl_Normalize_Path (P, R'Address);
      return Ret : String := Value (R) do
         Free (R);
         Free (P);
      end return;
   end Normalize_Path;

   -------------------
   -- Relative_Path --
   -------------------

   function Relative_Path (Base : String; Path : String) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Relative_Path unimplemented");
      return raise Program_Error with "Unimplemented function Relative_Path";
   end Relative_Path;

end CycloneDDS.Idl.File;
