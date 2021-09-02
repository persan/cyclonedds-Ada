pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_pmd_h is

   type ParticipantMessageData is record
      participantGuidPrefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:34
      kind : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:35
      value : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.ddsi_octetseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:33

   subtype ParticipantMessageData_t is ParticipantMessageData;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:37

   participant_message_data_ops : aliased array (size_t) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "participant_message_data_ops";

   participant_message_data_nops : aliased size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "participant_message_data_nops";

   participant_message_data_ops_key : aliased array (size_t) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "participant_message_data_ops_key";

   participant_message_data_nops_key : aliased size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "participant_message_data_nops_key";

   procedure write_pmd_message_guid
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      pp_guid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      pmd_kind : unsigned)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "write_pmd_message_guid";

   procedure write_pmd_message
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      pmd_kind : unsigned)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "write_pmd_message";

   procedure handle_pmd_message (rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state; sample_common : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_pmd.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "handle_pmd_message";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_pmd_h;