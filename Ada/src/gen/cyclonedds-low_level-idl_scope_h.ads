pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.idl_tree_h;
with System;
limited with CycloneDDS.Low_Level.idl_processor_h;


package CycloneDDS.Low_Level.idl_scope_h is

   IDL_FIND_IGNORE_CASE : constant := (2**0);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:74
   IDL_FIND_IGNORE_IMPORTS : constant := (2**1);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:75
   IDL_FIND_ANNOTATION : constant := (2**2);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:76

   type idl_scope;
   subtype idl_scope_t is idl_scope;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:19

   type idl_declaration;
   subtype idl_declaration_t is idl_declaration;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:21

   type idl_declaration_kind is 
     (IDL_MODULE_DECLARATION,
      IDL_ANNOTATION_DECLARATION,
      IDL_SPECIFIER_DECLARATION,
      IDL_INSTANCE_DECLARATION,
      IDL_USE_DECLARATION,
      IDL_SCOPE_DECLARATION)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:23

   type idl_declaration is record
      kind : aliased idl_declaration_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:36
      next : access idl_declaration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:37
      local_scope : access constant idl_scope_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:38
      name : access CycloneDDS.Low_Level.idl_tree_h.idl_name;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:39
      scoped_name : access CycloneDDS.Low_Level.idl_tree_h.idl_scoped_name;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:40
      node : access constant CycloneDDS.Low_Level.idl_tree_h.idl_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:41
      scope : access idl_scope_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:22

   type idl_import;
   subtype idl_import_t is idl_import;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:45

   type idl_import is record
      next : access idl_import_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:47
      scope : access constant idl_scope_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:46

   type idl_scope_kind is 
     (IDL_GLOBAL_SCOPE,
      IDL_MODULE_SCOPE,
      IDL_ANNOTATION_SCOPE,
      IDL_STRUCT_SCOPE,
      IDL_UNION_SCOPE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:52

   type anon_struct14987 is record
      first : access idl_declaration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:62
      last : access idl_declaration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:62
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct14988 is record
      first : access idl_import_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:65
      last : access idl_import_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:65
   end record
   with Convention => C_Pass_By_Copy;
   type idl_scope is record
      kind : aliased idl_scope_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:58
      parent : access constant idl_scope_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:59
      name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_name;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:60
      declarations : aliased anon_struct14987;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:63
      imports : aliased anon_struct14988;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:51

   function idl_scope (node : System.Address) return access idl_scope_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "idl_scope";

   function idl_declaration (node : System.Address) return access idl_declaration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "idl_declaration";

   function idl_find
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      scope : access constant idl_scope_t;
      name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_name;
      flags : Interfaces.Unsigned_32) return access constant idl_declaration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "idl_find";

   function idl_find_scoped_name
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      scope : access constant idl_scope_t;
      scoped_name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_scoped_name;
      flags : Interfaces.Unsigned_32) return access constant idl_declaration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "idl_find_scoped_name";

   function idl_find_field_name
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      scope : access constant idl_scope_t;
      field_name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_field_name;
      flags : Interfaces.Unsigned_32) return access constant idl_declaration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/scope.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "idl_find_field_name";

end CycloneDDS.Low_Level.idl_scope_h;
