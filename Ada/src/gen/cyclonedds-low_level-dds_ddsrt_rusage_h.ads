pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;

package CycloneDDS.Low_Level.dds_ddsrt_rusage_h is

   DDSRT_HAVE_RUSAGE : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:26

   type ddsrt_rusage_t is record
      utime : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:40
      stime : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:41
      maxrss : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:42
      idrss : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:43
      nvcsw : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:45
      nivcsw : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:47

   type ddsrt_getrusage_who is 
     (DDSRT_RUSAGE_SELF,
      DDSRT_RUSAGE_THREAD)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:49

   function ddsrt_getrusage (who : ddsrt_getrusage_who; usage : access ddsrt_rusage_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getrusage";

   function ddsrt_getrusage_anythread (tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_list_id_t; usage : access ddsrt_rusage_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/rusage.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getrusage_anythread";

end CycloneDDS.Low_Level.dds_ddsrt_rusage_h;
