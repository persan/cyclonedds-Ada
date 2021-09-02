pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_security_core_dds_security_timed_cb_h is

  -- * Copyright(c) 2006 to 2019 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   subtype dds_security_time_event_handle_t is unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:24

  --*
  -- * The dispatcher that will trigger the timed callbacks.
  --  

   type dds_security_timed_dispatcher is null record;   -- incomplete struct

  --*
  -- * The callback is triggered by two causes:
  -- * 1. The trigger timeout has been reached.
  -- * 2. The related dispatcher is being deleted.
  --  

   type dds_security_timed_cb_kind_t is 
     (DDS_SECURITY_TIMED_CB_KIND_TIMEOUT,
      DDS_SECURITY_TIMED_CB_KIND_DELETE)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:39

  --*
  -- * Template for the timed callback functions.
  -- * It is NOT allowed to call any t_timed_cb API functions from within this
  -- * callback context.
  -- *
  -- * This will be called when the trigger time of the added callback is reached,
  -- * or if the related dispatcher is deleted. The latter can be used to clean up
  -- * possible callback resources.
  -- *
  -- * @param timer         The associated timer.
  -- * @param trigger_time  The expiry time of the timer
  -- * @param kind          Triggered by a timeout or a deletion.
  -- * @param arg           User data, provided when adding a callback to the
  -- *                      related dispatcher.
  --  

   type dds_security_timed_cb_t is access procedure
        (arg1 : dds_security_time_event_handle_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
         arg3 : dds_security_timed_cb_kind_t;
         arg4 : System.Address)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:57

  --*
  -- * Create a new dispatcher for timed callbacks.
  -- * The dispatcher is not enabled (see dds_security_timed_dispatcher_enable).
  -- *
  -- * @return              New (disabled) timed callbacks dispatcher.
  -- * @param evq           The event queue used to handle the timers.
  --  

   function dds_security_timed_dispatcher_new (evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq) return access dds_security_timed_dispatcher  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_new";

  --*
  -- * Frees the given dispatcher.
  -- * If the dispatcher contains timed callbacks, then these will be
  -- * triggered with DDS_SECURITY_TIMED_CB_KIND_DELETE and then removed. This
  -- * is done whether the dispatcher is enabled or not.
  -- *
  -- * @param d             The dispatcher to free.
  -- * 
  --  

   procedure dds_security_timed_dispatcher_free (d : access dds_security_timed_dispatcher)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_free";

  --*
  -- * Enables a dispatcher for timed callbacks.
  -- *
  -- * Until a dispatcher is enabled, no DDS_SECURITY_TIMED_CB_KIND_TIMEOUT callbacks will
  -- * be triggered.
  -- * As soon as it is enabled, possible stored timed callbacks that are in the
  -- * past will be triggered at that moment.
  -- * Also, from this point on, possible future callbacks will also be triggered
  -- * when the appropriate time has been reached.
  -- *
  -- * A listener argument can be supplied that is returned when the callback
  -- * is triggered. The dispatcher doesn't do anything more with it, so it may
  -- * be NULL.
  -- *
  -- * DDS_SECURITY_TIMED_CB_KIND_DELETE callbacks will always be triggered despite the
  -- * dispatcher being possibly disabled.
  -- *
  -- * @param d             The dispatcher to enable.
  -- *
  --  

   procedure dds_security_timed_dispatcher_enable (d : access dds_security_timed_dispatcher)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_enable";

  --*
  -- * Disables a dispatcher for timed callbacks.
  -- *
  -- * When a dispatcher is disabled (default after creation), it will not
  -- * trigger any related callbacks. It will still store them, however, so
  -- * that they can be triggered after a (re)enabling.
  -- *
  -- * This is when the callback is actually triggered by a timeout and thus
  -- * its kind is DDS_SECURITY_TIMED_CB_KIND_TIMEOUT. DDS_SECURITY_TIMED_CB_KIND_DELETE callbacks
  -- * will always be triggered despite the dispatcher being possibly disabled.
  -- *
  -- * If it returns true, there will be no further callback invocations until
  -- * re-enabled. If it returns false because it was called from multiple
  -- * threads at the same time, this is not guaranteed.
  -- *
  -- * @param d             The dispatcher to disable.
  -- *
  -- * @return true if disabled, false if it was already disabled
  --  

   function dds_security_timed_dispatcher_disable (d : access dds_security_timed_dispatcher) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_disable";

  --*
  -- * Adds a timed callback to a dispatcher.
  -- *
  -- * The given callback will be triggered with DDS_SECURITY_TIMED_CB_KIND_TIMEOUT when:
  -- *  1. The dispatcher is enabled and
  -- *  2. The trigger_time has been reached.
  -- *
  -- * If the trigger_time lays in the past, then the callback is still added.
  -- * When the dispatcher is already enabled, it will trigger this 'past'
  -- * callback immediately. Otherwise, the 'past' callback will be triggered
  -- * at the moment that the dispatcher is enabled.
  -- *
  -- * The given callback will be triggered with DDS_SECURITY_TIMED_CB_KIND_DELETE when:
  -- *  1. The related dispatcher is deleted (ignoring enable/disable).
  -- *
  -- * This is done so that possible related callback resources can be freed.
  -- *
  -- * @param d             The dispatcher to add the callback to.
  -- * @param cb            The actual callback function.
  -- * @param trigger_time  A wall-clock time of when to trigger the callback.
  -- * @param arg           User data that is provided with the callback.
  -- *
  -- * @return              The timer.
  --  

   function dds_security_timed_dispatcher_add
     (d : access dds_security_timed_dispatcher;
      cb : dds_security_timed_cb_t;
      trigger_time : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
      arg : System.Address) return dds_security_time_event_handle_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_add";

  --*
  -- * Removes a timer from the dispatcher.
  -- *
  -- * The given timer will be removed from the dispatcher and the callback
  -- * associated with the timer will be called with DDS_SECURITY_TIMED_CB_KIND_DELETE.
  -- *
  -- * @param d             The dispatcher to add the callback to.
  -- * @param timer         The timer that has to removed.
  --  

   procedure dds_security_timed_dispatcher_remove (d : access dds_security_timed_dispatcher; timer : dds_security_time_event_handle_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_remove";

end CycloneDDS.Low_Level.dds_security_core_dds_security_timed_cb_h;
