pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;


with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_security_core_dds_security_fsm_h is

   DDS_SECURITY_FSM_EVENT_AUTO : constant := (-1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:23
   DDS_SECURITY_FSM_EVENT_TIMEOUT : constant := (-2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:24
   DDS_SECURITY_FSM_EVENT_DELETE : constant := (-3);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:25

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

   type dds_security_fsm is null record;   -- incomplete struct

   type dds_security_fsm_control is null record;   -- incomplete struct

   type DDS_SECURITY_FSM_DEBUG_ACT is 
     (DDS_SECURITY_FSM_DEBUG_ACT_DISPATCH,
      DDS_SECURITY_FSM_DEBUG_ACT_DISPATCH_DIRECT,
      DDS_SECURITY_FSM_DEBUG_ACT_HANDLING)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:34

  --*
  -- * Template for user-defined state methods.
  -- * It is allowed to call dds_security_fsm_dispatch() from within a dispatch function.
  --  

   type dds_security_fsm_action is access procedure (arg1 : access dds_security_fsm; arg2 : System.Address)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:40

  --*
  -- * State struct
  -- *
  -- * - func    : optional user defined function, invoked by when reaching this state
  -- * - timeout : optional timeout which is controlled by the fsm
  --  

   type dds_security_fsm_state is record
      func : dds_security_fsm_action;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:49
      timeout : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:48

  --*
  -- * Template for user-defined debug methods.
  -- * It'll be called for every dispatched event, regardless of which state it
  -- * is in (which is also provided).
  -- * This can be used to get extra information about the behaviour of the
  -- * state machine.
  -- * It is not allowed to call any fsm API functions from within this
  -- * debug callback.
  --  

   type dds_security_fsm_debug is access procedure
        (arg1 : access dds_security_fsm;
         arg2 : DDS_SECURITY_FSM_DEBUG_ACT;
         arg3 : access constant dds_security_fsm_state;
         arg4 : int;
         arg5 : System.Address)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:62

  --*
  -- * Transition definitions
  -- *
  -- * begin    : start state (to transition from)
  -- * event_id : indicate the event responsible for the transition
  -- * func     : user defined function, invoked during transition
  -- * end      : end state (to transition to)
  --  

   type dds_security_fsm_transition is record
      c_begin : access constant dds_security_fsm_state;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:73
      event_id : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:74
      func : dds_security_fsm_action;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:75
      c_end : access constant dds_security_fsm_state;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:72

  --*
  -- * Create a new fsm
  -- * Initializes a new fsm. Fsm does not start.
  -- *
  -- * @param transitions   array of transitions which the defines the functioning of the state machine
  -- * @param size          number of transitions
  -- * @param arg           Extra data to pass to the fsm. Will be passed to all user defined callback
  -- *                      methods.
  -- *
  -- * @return              Returns the new created state machine on success. Null on failure.
  --  

   function dds_security_fsm_create
     (control : access dds_security_fsm_control;
      transitions : access constant dds_security_fsm_transition;
      size : unsigned;
      arg : System.Address) return access dds_security_fsm  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_create";

  --*
  -- * Start a fsm
  -- * Starts the fsm, start with the firs transition
  -- *
  -- * @param fsm fsm to start.
  --  

   procedure dds_security_fsm_start (fsm : access dds_security_fsm)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_start";

  --*
  -- * Set an overall timeout for the given state machine
  -- * Will be monitoring the overall timeout of the given state machine,
  -- * invoking a user defined callback when the given timeout expires.
  -- * Timeout will be aborted upon a cleanup of the state machine.
  -- *
  -- * @param fsm       fsm to set the overall timeout for
  -- * @param func      user defined function which is called when the
  -- *                  overall timeout expires.
  -- * @param timeout   indicates the overall timeout
  --  

   procedure dds_security_fsm_set_timeout
     (fsm : access dds_security_fsm;
      func : dds_security_fsm_action;
      timeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_set_timeout";

  --*
  -- * Set an debug callback for the given state machine.
  -- *
  -- * @param fsm       fsm to set the overall timeout for
  -- * @param func      user defined function which is called for every
  -- *                  event, whether being dispatched or actually
  -- *                  handled.
  --  

   procedure dds_security_fsm_set_debug (fsm : access dds_security_fsm; func : dds_security_fsm_debug)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_set_debug";

  --*
  -- * Dispatches the next event
  -- * Assignment for the state machine to transisiton to the next state.
  -- *
  -- * @param fsm       The state machine
  -- * @param event_id  Indicate where to transisition to (outcome of current state)
  -- * @param prio      Indicates if the event has to be scheduled with priority.
  --  

   procedure dds_security_fsm_dispatch
     (fsm : access dds_security_fsm;
      event_id : int;
      prio : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_dispatch";

  --*
  -- * Retrieve the current state of a given state machine
  -- *
  -- * @param fsm       The state machine
  -- *
  -- * @return          true iff fsm not in initial or final state
  --  

   function dds_security_fsm_running (fsm : access dds_security_fsm) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_running";

  --*
  -- * Stops the state machine.
  -- * Stops all running timeouts and events and cleaning all memory
  -- * related to this machine.
  -- *
  -- * When calling this from another thread, then it may block until
  -- * a possible concurrent event has finished. After this call, the
  -- * fsm may not be used anymore.
  -- *
  -- * When in the fsm action callback function context, this will
  -- * not block. It will garbage collect when the event has been
  -- * handled.
  -- *
  -- * @param fsm   The state machine to b stopped
  --  

   procedure dds_security_fsm_stop (fsm : access dds_security_fsm)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_stop";

  --*
  -- * Free the state machine.
  -- * Stops all running timeouts and events and cleaning all memory
  -- * related to this machine.
  -- *
  -- * When calling this from another thread, then it may block until
  -- * a possible concurrent event has finished. After this call, the
  -- * fsm may not be used anymore.
  -- *
  -- * When in the fsm action callback function context, this will
  -- * not block. It will garbage collect when the event has been
  -- * handled.
  -- *
  -- * @param fsm   The state machine to be removed
  --  

   procedure dds_security_fsm_free (fsm : access dds_security_fsm)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_free";

  --*
  -- * Create a new fsm control context,
  -- * The fsm control context manages the global state of the fsm's created within
  -- * this context. The fsm control a thread to control the state machined allocated
  -- * to this control.
  -- *
  -- * @param gv  The global settings.
  -- *
  -- * @return Returns the new fsm control on success. Null on failure.
  --  

   function dds_security_fsm_control_create (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access dds_security_fsm_control  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_create";

  --*
  -- * Frees the fsm control and the allocated fsm's.
  -- * A precondition is that the fsm control is stopped.
  -- *
  -- * @param control The fsm control to be freed.
  --  

   procedure dds_security_fsm_control_free (control : access dds_security_fsm_control)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_free";

  --*
  -- * Starts the thread that handles the events and timeouts associated
  -- * with the fsm that are managed by this fsm control.
  -- *
  -- * @param control The fsm control to be started.
  --  

   function dds_security_fsm_control_start (control : access dds_security_fsm_control; name : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_start";

  --*
  -- * Stops the thread that handles the events and timeouts.
  -- *
  -- * @param control The fsm control to be started.
  --  

   procedure dds_security_fsm_control_stop (control : access dds_security_fsm_control)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/security/core/dds_security_fsm.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_stop";

end CycloneDDS.Low_Level.dds_security_core_dds_security_fsm_h;
