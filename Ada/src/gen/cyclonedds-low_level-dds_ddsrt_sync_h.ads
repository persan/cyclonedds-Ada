pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsrt_sync_h is

   procedure ddsrt_mutex_init (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mutex_init";

   procedure ddsrt_mutex_destroy (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mutex_destroy";

   procedure ddsrt_mutex_lock (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mutex_lock";

   function ddsrt_mutex_trylock (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mutex_trylock";

   procedure ddsrt_mutex_unlock (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mutex_unlock";

   procedure ddsrt_cond_init (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_init";

   procedure ddsrt_cond_destroy (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_destroy";

   procedure ddsrt_cond_wait (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t; mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_wait";

   function ddsrt_cond_waituntil
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;
      mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      abstime : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_waituntil";

   function ddsrt_cond_waitfor
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;
      mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      reltime : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_waitfor";

   procedure ddsrt_cond_signal (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_signal";

   procedure ddsrt_cond_broadcast (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_cond_broadcast";

   procedure ddsrt_rwlock_init (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_init";

   procedure ddsrt_rwlock_destroy (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_destroy";

   procedure ddsrt_rwlock_read (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_read";

   procedure ddsrt_rwlock_write (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_write";

   function ddsrt_rwlock_tryread (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_tryread";

   function ddsrt_rwlock_trywrite (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_trywrite";

   procedure ddsrt_rwlock_unlock (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_rwlock_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_rwlock_unlock";

   type ddsrt_once_fn is access procedure
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:282

   procedure ddsrt_once (control : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_once_t; init_fn : ddsrt_once_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sync.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_once";

end CycloneDDS.Low_Level.dds_ddsrt_sync_h;
