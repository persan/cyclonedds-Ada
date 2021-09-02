pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h is

   type ddsi_topic_definition is null record;   -- incomplete struct

   type ddsi_builtin_topic_interface is record
      arg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:28
      builtintopic_is_builtintopic : access function (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; arg2 : System.Address) return Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:30
      builtintopic_is_visible : access function
           (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
            arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;
            arg3 : System.Address) return Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:31
      builtintopic_get_tkmap_entry : access function (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid; arg2 : System.Address) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:32
      builtintopic_write_endpoint : access procedure
           (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
            arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
            arg3 : Extensions.bool;
            arg4 : System.Address);  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:33
      builtintopic_write_topic : access procedure
           (arg1 : access constant ddsi_topic_definition;
            arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
            arg3 : Extensions.bool;
            arg4 : System.Address);  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:27

   function builtintopic_is_visible
     (btif : access constant ddsi_builtin_topic_interface;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "builtintopic_is_visible";

   function builtintopic_is_builtintopic (btif : access constant ddsi_builtin_topic_interface; c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "builtintopic_is_builtintopic";

   function builtintopic_get_tkmap_entry (btif : access constant ddsi_builtin_topic_interface; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "builtintopic_get_tkmap_entry";

   procedure builtintopic_write_endpoint
     (btif : access constant ddsi_builtin_topic_interface;
      e : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      alive : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "builtintopic_write_endpoint";

   procedure builtintopic_write_topic
     (btif : access constant ddsi_builtin_topic_interface;
      tpd : access constant ddsi_topic_definition;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      alive : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_builtin_topic_if.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "builtintopic_write_topic";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h;
