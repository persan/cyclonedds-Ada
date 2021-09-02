pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsrt_process_h is

   PRIdPID : aliased constant String := "d" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/process.h:40
   DDSRT_HAVE_MULTI_PROCESS : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/process.h:41

   subtype ddsrt_pid_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/process.h:39

   function ddsrt_getpid return ddsrt_pid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/process.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getpid";

end CycloneDDS.Low_Level.dds_ddsrt_process_h;
