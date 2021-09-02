pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h is

   --  unsupported macro: DDSRT_ONCE_INIT PTHREAD_ONCE_INIT
   type ddsrt_cond_t is record
      cond : aliased CycloneDDS.Low_Level.x86_64_linux_gnu_bits_pthreadtypes_h.pthread_cond_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:27

   type ddsrt_mutex_t is record
      mutex : aliased CycloneDDS.Low_Level.x86_64_linux_gnu_bits_pthreadtypes_h.pthread_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:31

   type ddsrt_rwlock_t is record
      rwlock : aliased CycloneDDS.Low_Level.x86_64_linux_gnu_bits_pthreadtypes_h.pthread_rwlock_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:35

   subtype ddsrt_once_t is CycloneDDS.Low_Level.x86_64_linux_gnu_bits_pthreadtypes_h.pthread_once_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync/posix.h:37

end CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
