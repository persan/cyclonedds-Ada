pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;

package CycloneDDS.Low_Level.dds_ddsi_q_thread_h is

   CACHE_LINE_SIZE : constant := 64;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:30

   VTIME_NEST_MASK : constant := 16#f#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:34
   VTIME_TIME_MASK : constant := 16#fffffff0#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:35
   VTIME_TIME_SHIFT : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:36

   Q_THREAD_SCHEDCLASS_REALTIME : aliased constant String := "Realtime" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:45
   Q_THREAD_SCHEDCLASS_TIMESHARE : aliased constant String := "Timeshare" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:46

   Q_THREAD_SCHEDPRIO_DEFAULT : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:49

   Q_THREAD_DEBUG : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:76
   --  arg-macro: procedure thread_vtime_trace (ts1)
   --    do { } while (0)

   subtype vtime_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:32

   subtype svtime_t is Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:33

   type thread_state is 
     (THREAD_STATE_ZERO,
      THREAD_STATE_STOPPED,
      THREAD_STATE_INIT,
      THREAD_STATE_LAZILY_CREATED,
      THREAD_STATE_ALIVE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:51

   subtype anon_array1075 is Interfaces.C.char_array (0 .. 23);
   type thread_state_base is record
      vtime : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
      state : aliased thread_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
      gv : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
      tid : aliased CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
      f : access function (arg1 : System.Address) return Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
      f_arg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
      name : aliased anon_array1075;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:103
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:102

   subtype anon_array4862 is Interfaces.C.char_array (0 .. 0);
   type thread_state1 is record
      vtime : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      state : aliased thread_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      gv : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      tid : aliased CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      f : access function (arg1 : System.Address) return Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      f_arg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      name : aliased anon_array1075;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:107
      pad : aliased anon_array4862;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:108
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:106

   type thread_states is record
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:116
      nthreads : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:117
      ts : access thread_state1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:115

   thread_states : aliased thread_states  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "thread_states";

   tsd_thread_state : access thread_state1  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "tsd_thread_state";

   procedure thread_states_init (maxthreads : unsigned)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "thread_states_init";

   function thread_states_fini return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "thread_states_fini";

   function lookup_thread_properties (config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config; name : Interfaces.C.Strings.chars_ptr) return access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_thread_properties_listelem  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "lookup_thread_properties";

   function create_thread_with_properties
     (ts1 : System.Address;
      tprops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_thread_properties_listelem;
      name : Interfaces.C.Strings.chars_ptr;
      f : access function (arg1 : System.Address) return Interfaces.Unsigned_32;
      arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "create_thread_with_properties";

   function create_thread
     (ts : System.Address;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      name : Interfaces.C.Strings.chars_ptr;
      f : access function (arg1 : System.Address) return Interfaces.Unsigned_32;
      arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "create_thread";

   function lookup_thread_state_real return access thread_state1  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "lookup_thread_state_real";

   function join_thread (ts1 : access thread_state1) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "join_thread";

   procedure log_stack_traces (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg; gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "log_stack_traces";

   function lookup_thread_state return access thread_state1  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "lookup_thread_state";

   function vtime_awake_p (vtime : vtime_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "vtime_awake_p";

   function vtime_asleep_p (vtime : vtime_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "vtime_asleep_p";

   function vtime_gt (vtime1 : vtime_t; vtime0 : vtime_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "vtime_gt";

   function thread_is_awake return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "thread_is_awake";

   function thread_is_asleep return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "thread_is_asleep";

   procedure thread_state_asleep (ts1 : access thread_state1)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "thread_state_asleep";

   procedure thread_state_awake (ts1 : access thread_state1; gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "thread_state_awake";

   procedure thread_state_awake_domain_ok (ts1 : access thread_state1)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "thread_state_awake_domain_ok";

   procedure thread_state_awake_fixed_domain (ts1 : access thread_state1)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "thread_state_awake_fixed_domain";

   procedure thread_state_awake_to_awake_no_nest (ts1 : access thread_state1)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_thread.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "thread_state_awake_to_awake_no_nest";

end CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
