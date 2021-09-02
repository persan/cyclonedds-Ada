pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

with CycloneDDS.Low_Level.dds_ddsrt_sched_h;

with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;


package CycloneDDS.Low_Level.dds_ddsrt_threads_h is

   --  unsupported macro: ddsrt_thread_local __thread
   type ddsrt_thread_routine_t is access function (arg1 : System.Address) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:61

   type ddsrt_threadattr_t is record
      schedClass : aliased CycloneDDS.Low_Level.dds_ddsrt_sched_h.ddsrt_sched_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:68
      schedPriority : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:70
      stackSize : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:72
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:73

   procedure ddsrt_threadattr_init (attr : access ddsrt_threadattr_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_threadattr_init";

   function ddsrt_thread_create
     (thread : access CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t;
      name : Interfaces.C.Strings.chars_ptr;
      attr : access constant ddsrt_threadattr_t;
      start_routine : ddsrt_thread_routine_t;
      arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_create";

   function ddsrt_gettid return CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_tid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_gettid";

   function ddsrt_gettid_for_thread (thread : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t) return CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_tid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_gettid_for_thread";

   function ddsrt_thread_self return CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_self";

   function ddsrt_thread_equal (t1 : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t; t2 : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_equal";

   function ddsrt_thread_join (thread : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t; thread_result : access Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_join";

   function ddsrt_thread_getname (name : Interfaces.C.Strings.chars_ptr; size : size_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_getname";

   procedure ddsrt_thread_setname (name : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_setname";

   function ddsrt_thread_list (tids : access CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_list_id_t; size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_list";

   function ddsrt_thread_getname_anythread
     (tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_list_id_t;
      name : Interfaces.C.Strings.chars_ptr;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_getname_anythread";

   function ddsrt_thread_cleanup_push (routine : access procedure (arg1 : System.Address); arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_cleanup_push";

   function ddsrt_thread_cleanup_pop (execute : int) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_cleanup_pop";

   procedure ddsrt_thread_init (reason : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_init";

   procedure ddsrt_thread_fini (reason : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/threads.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_thread_fini";

end CycloneDDS.Low_Level.dds_ddsrt_threads_h;
