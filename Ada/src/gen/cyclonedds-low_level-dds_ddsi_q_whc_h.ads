pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;


with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;

package CycloneDDS.Low_Level.dds_ddsi_q_whc_h is

   --  arg-macro: function WHCST_ISEMPTY (whcst)
   --    return (whcst).max_seq = -1;
   --  unsupported macro: WHC_SAMPLE_ITER_SIZE (8 * sizeof(void *))
   type whc_borrowed_sample is record
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:29
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:30
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:31
      unacked : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:32
      last_rexmit_ts : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:33
      rexmit_count : aliased unsigned;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:28

   type whc_state is record
      min_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:38
      max_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:39
      unacked_bytes : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:37

   type whc;
   type whc_sample_iter_base is record
      the_whc : access whc;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:49

   subtype anon_array14299 is Interfaces.C.char_array (0 .. 63);
   type anon_union14298 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            opaque : aliased anon_array14299;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:55
         when 1 =>
            x : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:57
         when 2 =>
            y : aliased double;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:58
         when others =>
            p : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:59
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type whc_sample_iter is record
      c : aliased whc_sample_iter_base;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:53
      opaque : aliased anon_union14298;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:52

   type whc_next_seq_t is access function (arg1 : access constant whc; arg2 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:63

   type whc_get_state_t is access procedure (arg1 : access constant whc; arg2 : access whc_state)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:64

   type whc_borrow_sample_t is access function
        (arg1 : access constant whc;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
         arg3 : access whc_borrowed_sample) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:65

   type whc_borrow_sample_key_t is access function
        (arg1 : access constant whc;
         arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
         arg3 : access whc_borrowed_sample) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:66

   type whc_return_sample_t is access procedure
        (arg1 : access whc;
         arg2 : access whc_borrowed_sample;
         arg3 : Extensions.bool)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:67

   type whc_sample_iter_init_t is access procedure (arg1 : access constant whc; arg2 : access whc_sample_iter)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:68

   type whc_sample_iter_borrow_next_t is access function (arg1 : access whc_sample_iter; arg2 : access whc_borrowed_sample) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:69

   type whc_free_t is access procedure (arg1 : access whc)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:70

   type whc_insert_t is access function
        (arg1 : access whc;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
         arg3 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
         arg4 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
         arg5 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
         arg6 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
         arg7 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:76

   type whc_downgrade_to_volatile_t is access function (arg1 : access whc; arg2 : access whc_state) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:77

   type whc_remove_acked_messages_t is access function
        (arg1 : access whc;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
         arg3 : access whc_state;
         arg4 : System.Address) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:78

   type whc_free_deferred_free_list_t is access procedure (arg1 : access whc; arg2 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.whc_node)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:79

   type whc_ops is record
      insert : whc_insert_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:82
      remove_acked_messages : whc_remove_acked_messages_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:83
      free_deferred_free_list : whc_free_deferred_free_list_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:84
      get_state : whc_get_state_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:85
      next_seq : whc_next_seq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:86
      borrow_sample : whc_borrow_sample_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:87
      borrow_sample_key : whc_borrow_sample_key_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:88
      return_sample : whc_return_sample_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:89
      sample_iter_init : whc_sample_iter_init_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:90
      sample_iter_borrow_next : whc_sample_iter_borrow_next_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:91
      downgrade_to_volatile : whc_downgrade_to_volatile_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:92
      free : whc_free_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:93
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:81

   type whc is record
      ops : access constant whc_ops;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:96

   function whc_next_seq (the_whc : access constant whc; seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "whc_next_seq";

   procedure whc_get_state (the_whc : access constant whc; st : access whc_state)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "whc_get_state";

   function whc_borrow_sample
     (the_whc : access constant whc;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      sample : access whc_borrowed_sample) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "whc_borrow_sample";

   function whc_borrow_sample_key
     (the_whc : access constant whc;
      serdata_key : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      sample : access whc_borrowed_sample) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "whc_borrow_sample_key";

   procedure whc_return_sample
     (the_whc : access whc;
      sample : access whc_borrowed_sample;
      update_retransmit_info : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "whc_return_sample";

   procedure whc_sample_iter_init (the_whc : access constant whc; it : access whc_sample_iter)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "whc_sample_iter_init";

   function whc_sample_iter_borrow_next (it : access whc_sample_iter; sample : access whc_borrowed_sample) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "whc_sample_iter_borrow_next";

   procedure whc_free (the_whc : access whc)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "whc_free";

   function whc_insert
     (the_whc : access whc;
      max_drop_seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      exp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "whc_insert";

   function whc_downgrade_to_volatile (the_whc : access whc; st : access whc_state) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "whc_downgrade_to_volatile";

   function whc_remove_acked_messages
     (the_whc : access whc;
      max_drop_seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      whcst : access whc_state;
      deferred_free_list : System.Address) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "whc_remove_acked_messages";

   procedure whc_free_deferred_free_list (the_whc : access whc; deferred_free_list : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.whc_node)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_whc.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "whc_free_deferred_free_list";

end CycloneDDS.Low_Level.dds_ddsi_q_whc_h;
