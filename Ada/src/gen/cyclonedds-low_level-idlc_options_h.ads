pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.idlc_options_h is

   IDLC_NO_MEMORY : constant := (-1);  --  /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:21
   IDLC_BAD_OPTION : constant := (-2);  --  /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:22
   IDLC_NO_ARGUMENT : constant := (-3);  --  /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:23
   IDLC_BAD_ARGUMENT : constant := (-4);  --  /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:24

   type idlc_option;
   subtype idlc_option_t is idlc_option;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:26

   type anon_enum15064 is 
     (IDLC_FLAG,
      IDLC_STRING,
      IDLC_FUNCTION)
   with Convention => C;
   type anon_union15065 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            flag : access int;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:34
         when 1 =>
            string : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:35
         when others =>
            c_function : access function (arg1 : access constant idlc_option_t; arg2 : Interfaces.C.Strings.chars_ptr) return int;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:36
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type idlc_option is record
      c_type : anon_enum15064;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:32
      store : aliased anon_union15065;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:37
      option : aliased char;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:38
      suboption : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:39
      argument : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:40
      help : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/options.h:27

end CycloneDDS.Low_Level.idlc_options_h;
