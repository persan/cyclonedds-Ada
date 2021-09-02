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

   DDS_SECURITY_FSM_EVENT_AUTO : constant := (-1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:23
   DDS_SECURITY_FSM_EVENT_TIMEOUT : constant := (-2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:24
   DDS_SECURITY_FSM_EVENT_DELETE : constant := (-3);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:25

   type dds_security_fsm is null record;   -- incomplete struct

   type dds_security_fsm_control is null record;   -- incomplete struct

   type DDS_SECURITY_FSM_DEBUG_ACT is 
     (DDS_SECURITY_FSM_DEBUG_ACT_DISPATCH,
      DDS_SECURITY_FSM_DEBUG_ACT_DISPATCH_DIRECT,
      DDS_SECURITY_FSM_DEBUG_ACT_HANDLING)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:34

   type dds_security_fsm_action is access procedure (arg1 : access dds_security_fsm; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:40

   type dds_security_fsm_state is record
      func : dds_security_fsm_action;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:49
      timeout : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:48

   type dds_security_fsm_debug is access procedure
        (arg1 : access dds_security_fsm;
         arg2 : DDS_SECURITY_FSM_DEBUG_ACT;
         arg3 : access constant dds_security_fsm_state;
         arg4 : int;
         arg5 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:62

   type dds_security_fsm_transition is record
      c_begin : access constant dds_security_fsm_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:73
      event_id : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:74
      func : dds_security_fsm_action;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:75
      c_end : access constant dds_security_fsm_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:72

   function dds_security_fsm_create
     (control : access dds_security_fsm_control;
      transitions : access constant dds_security_fsm_transition;
      size : Interfaces.Unsigned_32;
      arg : System.Address) return access dds_security_fsm  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_create";

   procedure dds_security_fsm_start (fsm : access dds_security_fsm)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_start";

   procedure dds_security_fsm_set_timeout
     (fsm : access dds_security_fsm;
      func : dds_security_fsm_action;
      timeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_set_timeout";

   procedure dds_security_fsm_set_debug (fsm : access dds_security_fsm; func : dds_security_fsm_debug)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_set_debug";

   procedure dds_security_fsm_dispatch
     (fsm : access dds_security_fsm;
      event_id : Interfaces.Integer_32;
      prio : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_dispatch";

   function dds_security_fsm_running (fsm : access dds_security_fsm) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_running";

   procedure dds_security_fsm_stop (fsm : access dds_security_fsm)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_stop";

   procedure dds_security_fsm_free (fsm : access dds_security_fsm)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_free";

   function dds_security_fsm_control_create (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access dds_security_fsm_control  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_create";

   procedure dds_security_fsm_control_free (control : access dds_security_fsm_control)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_free";

   function dds_security_fsm_control_start (control : access dds_security_fsm_control; name : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_start";

   procedure dds_security_fsm_control_stop (control : access dds_security_fsm_control)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_fsm.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_fsm_control_stop";

end CycloneDDS.Low_Level.dds_security_core_dds_security_fsm_h;
