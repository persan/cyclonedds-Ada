pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h is

   NN_LAT_ESTIM_MEDIAN_WINSZ : constant := 7;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:21

   type anon_array3979 is array (0 .. 6) of aliased float;
   type nn_lat_estim is record
      index : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:26
      window : aliased anon_array3979;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:27
      smoothed : aliased float;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:29
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:23

   procedure nn_lat_estim_init (le : access nn_lat_estim)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "nn_lat_estim_init";

   procedure nn_lat_estim_fini (le : access nn_lat_estim)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "nn_lat_estim_fini";

   procedure nn_lat_estim_update (le : access nn_lat_estim; est : Interfaces.Integer_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "nn_lat_estim_update";

   function nn_lat_estim_current (le : access constant nn_lat_estim) return double  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "nn_lat_estim_current";

   function nn_lat_estim_log
     (logcat : Interfaces.Unsigned_32;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      tag : Interfaces.C.Strings.chars_ptr;
      le : access constant nn_lat_estim) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_lat_estim.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "nn_lat_estim_log";

end CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h;
