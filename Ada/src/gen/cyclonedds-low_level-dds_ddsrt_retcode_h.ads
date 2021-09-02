pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsrt_retcode_h is

   DDS_RETCODE_OK : constant := (0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:31
   DDS_RETCODE_ERROR : constant := (-1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:32
   DDS_RETCODE_UNSUPPORTED : constant := (-2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:33
   DDS_RETCODE_BAD_PARAMETER : constant := (-3);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:34
   DDS_RETCODE_PRECONDITION_NOT_MET : constant := (-4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:35
   DDS_RETCODE_OUT_OF_RESOURCES : constant := (-5);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:36
   DDS_RETCODE_NOT_ENABLED : constant := (-6);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:37
   DDS_RETCODE_IMMUTABLE_POLICY : constant := (-7);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:38
   DDS_RETCODE_INCONSISTENT_POLICY : constant := (-8);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:39
   DDS_RETCODE_ALREADY_DELETED : constant := (-9);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:40
   DDS_RETCODE_TIMEOUT : constant := (-10);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:41
   DDS_RETCODE_NO_DATA : constant := (-11);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:42
   DDS_RETCODE_ILLEGAL_OPERATION : constant := (-12);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:43
   DDS_RETCODE_NOT_ALLOWED_BY_SECURITY : constant := (-13);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:44

   DDS_XRETCODE_BASE : constant := (-50);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:49
   --  arg-macro: function DDS_XRETCODE (x)
   --    return DDS_XRETCODE_BASE - (x);
   --  unsupported macro: DDS_RETCODE_IN_PROGRESS DDS_XRETCODE(1)
   --  unsupported macro: DDS_RETCODE_TRY_AGAIN DDS_XRETCODE(2)
   --  unsupported macro: DDS_RETCODE_INTERRUPTED DDS_XRETCODE(3)
   --  unsupported macro: DDS_RETCODE_NOT_ALLOWED DDS_XRETCODE(4)
   --  unsupported macro: DDS_RETCODE_HOST_NOT_FOUND DDS_XRETCODE(5)
   --  unsupported macro: DDS_RETCODE_NO_NETWORK DDS_XRETCODE(6)
   --  unsupported macro: DDS_RETCODE_NO_CONNECTION DDS_XRETCODE(7)
   --  unsupported macro: DDS_RETCODE_NOT_ENOUGH_SPACE DDS_XRETCODE(8)
   --  unsupported macro: DDS_RETCODE_OUT_OF_RANGE DDS_XRETCODE(9)
   --  unsupported macro: DDS_RETCODE_NOT_FOUND DDS_XRETCODE(10)

   subtype dds_return_t is Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:12

   function dds_strretcode (ret : dds_return_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/retcode.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "dds_strretcode";

end CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
