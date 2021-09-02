pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h is

   DDSRT_HAVE_THREAD_SETNAME : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:20

   DDSRT_HAVE_THREAD_LIST : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:23

   PRIdTID : aliased constant String := "ld" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:34

   subtype ddsrt_tid_t is long;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:33

   subtype ddsrt_thread_list_id_t is long;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:35

   type ddsrt_thread_t is record
      v : aliased CycloneDDS.Low_Level.x86_64_linux_gnu_bits_pthreadtypes_h.pthread_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads/posix.h:67

end CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;
