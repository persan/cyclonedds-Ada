with GNAT.Strings;
with Ada.Text_IO;
package Idlada.Generator is
   pragma Elaborate_Body;
   type Header_Record is tagged limited record
      Handle : Ada.Text_Io.File_Type;
      Path   : GNAT.Strings.String_Access;
   end record;
   type Generator_Record is tagged limited record
      Path                     : GNAT.Strings.String_Access;
      Array_Include            : GNAT.Strings.String_Access;
      Sequence_Format          : GNAT.Strings.String_Access;
      Sequence_Include         : GNAT.Strings.String_Access;
      Bounded_Sequence_Format  : GNAT.Strings.String_Access;
      Bounded_Sequence_Include : GNAT.Strings.String_Access;
      String_Format            : GNAT.Strings.String_Access;
      String_Include           : GNAT.Strings.String_Access;
      Array_Format             : GNAT.Strings.String_Access;
      Bounded_String_Format    : GNAT.Strings.String_Access;
      Bounded_String_Include   : GNAT.Strings.String_Access;
      Union_Format             : GNAT.Strings.String_Access;
      Union_Getter_Format      : GNAT.Strings.String_Access;
      Union_Include            : GNAT.Strings.String_Access;
      Uses_Integers            : Boolean;
      Uses_Array               : Boolean;
      Uses_Sequence            : Boolean;
      Uses_Bounded_Sequence    : Boolean;
      Uses_String              : Boolean;
      Uses_Bounded_String      : Boolean;
      Uses_Union               : Boolean;
      Uses_Optional            : Boolean;
      Header                   : Header_Record;
   end record;

   --  const char *get_cpp11_name(const void *);
   --
   --  int get_cpp11_type( char *str, size_t size, const void *node, void *user_data);
   --
   --  int get_cpp11_fully_scoped_name(char *str, size_t size, const void *node, void *user_data);
   --
   --  int get_cpp11_name_typedef(char *str, size_t size, const void *node, void *user_data);
   --
   --  int get_cpp11_default_value(char *str, size_t size, const void *node, void *user_data);
   --
   --  int get_cpp11_value(char *str, size_t size, const void *node, void *user_data);


   --  idl_retcode_t generate_streamers(const idl_pstate_t *pstate, struct generator *generator);
   --
   --  idl_retcode_t generate_traits(const idl_pstate_t *pstate, struct generator *generator);
   --
   --  idl_retcode_t generate_types(const idl_pstate_t *pstate, struct generator *generator);

end Idlada.Generator;
