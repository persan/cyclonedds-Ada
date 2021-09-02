pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with System;

package CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h is

   type os_sockWaitset_Record is null record;   -- incomplete struct

   type os_sockWaitset is access all os_sockWaitset_Record;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:19

   type os_sockWaitsetCtx_Record is null record;   -- incomplete struct

   type os_sockWaitsetCtx is access all os_sockWaitsetCtx_Record;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:20

   function os_sockWaitsetNew return os_sockWaitset  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetNew";

   procedure os_sockWaitsetFree (ws : os_sockWaitset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetFree";

   procedure os_sockWaitsetTrigger (ws : os_sockWaitset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetTrigger";

   function os_sockWaitsetAdd (ws : os_sockWaitset; conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetAdd";

   procedure os_sockWaitsetPurge (ws : os_sockWaitset; index : unsigned)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetPurge";

   function os_sockWaitsetWait (ws : os_sockWaitset) return os_sockWaitsetCtx  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetWait";

   function os_sockWaitsetNextEvent (ctx : os_sockWaitsetCtx; conn : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetNextEvent";

   procedure os_sockWaitsetRemove (ws : os_sockWaitset; conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_sockwaitset.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetRemove";

end CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h;
