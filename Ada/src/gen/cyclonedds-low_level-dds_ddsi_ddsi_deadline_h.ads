pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsrt_circlist_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_deadline_h is

   type deadline_missed_cb_t is access function (arg1 : System.Address; arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:24

   type deadline_adm is record
      list : aliased CycloneDDS.Low_Level.dds_ddsrt_circlist_h.ddsrt_circlist;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:27
      evt : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:28
      deadline_missed_cb : deadline_missed_cb_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:29
      list_offset : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:30
      elem_offset : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:31
      dur : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:26

   type deadline_elem is record
      e : aliased CycloneDDS.Low_Level.dds_ddsrt_circlist_h.ddsrt_circlist_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:36
      t_deadline : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:37
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:35

   procedure deadline_init
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      the_deadline_adm : access deadline_adm;
      list_offset : size_t;
      elem_offset : size_t;
      deadline_missed_cb : deadline_missed_cb_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_init";

   procedure deadline_stop (the_deadline_adm : access constant deadline_adm)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_stop";

   procedure deadline_clear (the_deadline_adm : access deadline_adm)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_clear";

   procedure deadline_fini (the_deadline_adm : access constant deadline_adm)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_fini";

   function deadline_next_missed_locked
     (the_deadline_adm : access deadline_adm;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      instance : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_next_missed_locked";

   procedure deadline_register_instance_real
     (the_deadline_adm : access deadline_adm;
      elem : access deadline_elem;
      tprev : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_register_instance_real";

   procedure deadline_unregister_instance_real (the_deadline_adm : access deadline_adm; elem : access deadline_elem)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_unregister_instance_real";

   procedure deadline_renew_instance_real (the_deadline_adm : access deadline_adm; elem : access deadline_elem)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_renew_instance_real";

   procedure deadline_register_instance_locked
     (the_deadline_adm : access deadline_adm;
      elem : access deadline_elem;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_register_instance_locked";

   procedure deadline_reregister_instance_locked
     (the_deadline_adm : access deadline_adm;
      elem : access deadline_elem;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_reregister_instance_locked";

   procedure deadline_unregister_instance_locked (the_deadline_adm : access deadline_adm; elem : access deadline_elem)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_unregister_instance_locked";

   procedure deadline_renew_instance_locked (the_deadline_adm : access deadline_adm; elem : access deadline_elem)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_deadline.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "deadline_renew_instance_locked";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_deadline_h;
