pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.idl_retcode_h is

   IDL_RETCODE_OK : constant := (0);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:24

   IDL_RETCODE_PUSH_MORE : constant := (-1);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:26

   IDL_RETCODE_NEED_REFILL : constant := (-2);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:28

   IDL_RETCODE_SYNTAX_ERROR : constant := (-3);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:30

   IDL_RETCODE_SEMANTIC_ERROR : constant := (-4);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:32

   IDL_RETCODE_NO_MEMORY : constant := (-5);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:34

   IDL_RETCODE_ILLEGAL_EXPRESSION : constant := (-6);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:36

   IDL_RETCODE_OUT_OF_RANGE : constant := (-7);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:38

   IDL_RETCODE_NO_ACCESS : constant := (-8);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:40

   IDL_RETCODE_NO_ENTRY : constant := (-9);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:42

   IDL_RETCODE_NO_SPACE : constant := (-10);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:44

   IDL_RETCODE_BAD_FORMAT : constant := (-11);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:46

   IDL_RETCODE_BAD_PARAMETER : constant := (-12);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:48

   subtype idl_retcode_t is Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/retcode.h:17

end CycloneDDS.Low_Level.idl_retcode_h;
