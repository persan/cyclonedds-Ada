pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_md5_h is

   subtype ddsrt_md5_byte_t is unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:78

   subtype ddsrt_md5_word_t is unsigned;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:79

   type anon_array14534 is array (0 .. 1) of aliased ddsrt_md5_word_t;
   type anon_array14535 is array (0 .. 3) of aliased ddsrt_md5_word_t;
   type anon_array14536 is array (0 .. 63) of aliased ddsrt_md5_byte_t;
   type ddsrt_md5_state_s is record
      count : aliased anon_array14534;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:83
      abcd : aliased anon_array14535;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:84
      buf : aliased anon_array14536;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:85
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:82

   subtype ddsrt_md5_state_t is ddsrt_md5_state_s;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:86

   procedure ddsrt_md5_init (pms : access ddsrt_md5_state_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_md5_init";

   procedure ddsrt_md5_append
     (pms : access ddsrt_md5_state_t;
      data : access ddsrt_md5_byte_t;
      nbytes : unsigned)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_md5_append";

   procedure ddsrt_md5_finish (pms : access ddsrt_md5_state_t; digest : access ddsrt_md5_byte_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/md5.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_md5_finish";

end CycloneDDS.Low_Level.dds_ddsrt_md5_h;
