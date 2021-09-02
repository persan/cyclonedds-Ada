pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

with System;

package CycloneDDS.Low_Level.idl_symbol_h is

   type idl_file;
   subtype idl_file_t is idl_file;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:21

   type idl_file is record
      next : access idl_file_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:23
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:24
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:22

   type idl_source;
   subtype idl_source_t is idl_source;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:27

   type idl_source is record
      parent : access constant idl_source_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:29
      previous : access idl_source_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:30
      next : access idl_source_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:30
      includes : access idl_source_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:31
      additional_directory : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:32
      path : access constant idl_file_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:33
      file : access constant idl_file_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:28

   type idl_position is record
      source : access constant idl_source_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:38
      file : access constant idl_file_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:43
      line : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:44
      column : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:37

   subtype idl_position_t is idl_position;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:46

   type idl_location is record
      first : aliased idl_position_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:49
      last : aliased idl_position_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:48

   subtype idl_location_t is idl_location;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:51

   type idl_symbol;
   subtype idl_symbol_t is idl_symbol;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:56

   type idl_symbol is record
      location : aliased idl_location_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:57

   function idl_location (symbol : System.Address) return access constant idl_location_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/symbol.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "idl_location";

end CycloneDDS.Low_Level.idl_symbol_h;
