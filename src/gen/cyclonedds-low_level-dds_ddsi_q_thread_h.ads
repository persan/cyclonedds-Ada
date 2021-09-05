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

   CACHE_LINE_SIZE : constant :=
     64;  --  /usr/gnat/include/dds/ddsi/q_thread.h:30

   VTIME_NEST_MASK : constant :=
     16#f#;  --  /usr/gnat/include/dds/ddsi/q_thread.h:34
   VTIME_TIME_MASK : constant :=
     16#ffff_fff0#;  --  /usr/gnat/include/dds/ddsi/q_thread.h:35
   VTIME_TIME_SHIFT : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/q_thread.h:36

   Q_THREAD_SCHEDCLASS_REALTIME : aliased constant String :=
     "Realtime" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_thread.h:45
   Q_THREAD_SCHEDCLASS_TIMESHARE : aliased constant String :=
     "Timeshare" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_thread.h:46

   Q_THREAD_SCHEDPRIO_DEFAULT : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/q_thread.h:49

   Q_THREAD_DEBUG : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/q_thread.h:76
   --  arg-macro: procedure thread_vtime_trace (ts1)
   --    do { } while (0)

-- * Copyright(c) 2006 to 2018 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   -- Things don't go wrong if CACHE_LINE_SIZE is defined incorrectly,
   --   they just run slower because of false cache-line sharing. It can be
   --   discovered at run-time, but in practice it's 64 for most CPUs and
   --   128 for some.

   subtype vtime_t is unsigned;

   -- signed version
   subtype svtime_t is int;

   -- GCC has a nifty feature allowing the specification of the required
   --   alignment: __attribute__ ((aligned (CACHE_LINE_SIZE))) in this
   --   case. Many other compilers implement it as well, but it is by no
   --   means a standard feature.  So we do it the old-fashioned way.

   -- These strings are used to indicate the required scheduling class to the "create_thread()"
   -- When this value is used, the platform default for scheduling priority will be used
   type thread_state is
     (THREAD_STATE_ZERO, THREAD_STATE_STOPPED, THREAD_STATE_INIT,
      THREAD_STATE_LAZILY_CREATED, THREAD_STATE_ALIVE) with
      Convention => C;

      -- known to be dead
      -- internal thread, stopped-but-not-reaped
      -- internal thread, initializing
      -- lazily created in response because an application used it. Reclaimed if the thread terminates, but not considered an error if all of Cyclone is shutdown while this thread hasn't terminated yet
      -- known to be alive - for Cyclone internal threads
      -- * vtime indicates progress for the garbage collector and the liveliness monitoring.
      -- *
      -- * vtime is updated without using atomic operations: only the owning thread updates
      -- * them, and the garbage collection mechanism and the liveliness monitoring only
      -- * observe the value
      -- *
      -- * gv is constant for internal threads, i.e., for threads with state = ALIVE
      -- * gv is non-NULL for internal threads except thread liveliness monitoring
      -- *
      -- * Q_THREAD_DEBUG enables some really costly debugging stuff that may not be fully
      -- * portable (I used it once, might as well keep it)
      --

   subtype anon6035_array1090 is Interfaces.C.char_array (0 .. 23);
   type thread_state_base is record
      vtime : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      state : aliased thread_state;
      gv    : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_voidp_t;
      tid : aliased CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h
        .ddsrt_thread_t;
      f     : access function (arg1 : System.Address) return unsigned;
      f_arg : System.Address;
      name  : aliased anon6035_array1090;
   end record with
      Convention => C_Pass_By_Copy;

   subtype anon5118_array1090 is Interfaces.C.char_array (0 .. 23);
   subtype anon5118_array6037 is Interfaces.C.char_array (0 .. 0);
   type thread_state1 is record
      vtime : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      state : aliased thread_state;
      gv    : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_voidp_t;
      tid : aliased CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h
        .ddsrt_thread_t;
      f     : access function (arg1 : System.Address) return unsigned;
      f_arg : System.Address;
      name  : aliased anon5118_array1090;
      pad   : aliased anon5118_array6037;
   end record with
      Convention => C_Pass_By_Copy;

   type thread_states_t is record
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      nthreads : aliased unsigned;
      ts       : access thread_state1;
   end record with
      Convention => C_Pass_By_Copy;

      -- [nthreads]
   thread_states : aliased thread_states_t with
      Import        => True,
      Convention    => C,
      External_Name => "thread_states";

   tsd_thread_state : access thread_state1 with
      Import        => True,
      Convention    => C,
      External_Name => "tsd_thread_state";

   procedure thread_states_init (maxthreads : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "thread_states_init";

   function thread_states_fini return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "thread_states_fini";

   function lookup_thread_properties
     (config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config;
      name : Interfaces.C.Strings.chars_ptr)
      return access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
     .ddsi_config_thread_properties_listelem with
      Import        => True,
      Convention    => C,
      External_Name => "lookup_thread_properties";

   function create_thread_with_properties
     (ts1    : System.Address;
      tprops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config_thread_properties_listelem;
      name : Interfaces.C.Strings.chars_ptr;
      f    : access function (arg1 : System.Address) return unsigned;
      arg  : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "create_thread_with_properties";

   function create_thread
     (ts : System.Address;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      name : Interfaces.C.Strings.chars_ptr;
      f    : access function (arg1 : System.Address) return unsigned;
      arg  : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "create_thread";

   function lookup_thread_state_real return access thread_state1 with
      Import        => True,
      Convention    => C,
      External_Name => "lookup_thread_state_real";

   function join_thread
     (ts1 : access thread_state1)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "join_thread";

   procedure log_stack_traces
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "log_stack_traces";

   function lookup_thread_state return access thread_state1 with
      Import        => True,
      Convention    => C,
      External_Name => "lookup_thread_state";

   function vtime_awake_p (vtime : vtime_t) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "vtime_awake_p";

   function vtime_asleep_p (vtime : vtime_t) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "vtime_asleep_p";

   function vtime_gt
     (vtime1 : vtime_t; vtime0 : vtime_t) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "vtime_gt";

   function thread_is_awake return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "thread_is_awake";

   function thread_is_asleep return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "thread_is_asleep";

   procedure thread_state_asleep (ts1 : access thread_state1) with
      Import        => True,
      Convention    => C,
      External_Name => "thread_state_asleep";

      -- nested calls a rare and an extra fence doesn't break things
   procedure thread_state_awake
     (ts1 : access thread_state1;
      gv  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "thread_state_awake";

      -- nested calls a rare and an extra fence doesn't break things
   procedure thread_state_awake_domain_ok (ts1 : access thread_state1) with
      Import        => True,
      Convention    => C,
      External_Name => "thread_state_awake_domain_ok";

      -- nested calls a rare and an extra fence doesn't break things
   procedure thread_state_awake_fixed_domain (ts1 : access thread_state1) with
      Import        => True,
      Convention    => C,
      External_Name => "thread_state_awake_fixed_domain";

      -- fixed domain -> must be an internal thread
   procedure thread_state_awake_to_awake_no_nest
     (ts1 : access thread_state1) with
      Import        => True,
      Convention    => C,
      External_Name => "thread_state_awake_to_awake_no_nest";

end CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
