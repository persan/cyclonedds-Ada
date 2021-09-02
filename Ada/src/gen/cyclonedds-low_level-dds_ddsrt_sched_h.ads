pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_sched_h is

   type ddsrt_sched_t is 
     (DDSRT_SCHED_DEFAULT,
      DDSRT_SCHED_REALTIME,
      DDSRT_SCHED_TIMESHARE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sched.h:42

end CycloneDDS.Low_Level.dds_ddsrt_sched_h;
