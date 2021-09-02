pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_plist_h is

   subtype anon_array4269 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_plist_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:43
      pos : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:43
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:43
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:43
      protoversion : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:43
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:43
      identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:44
      options : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:44
      data : aliased anon_array4269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:42

   subtype anon_array6342 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_plist is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:54
      pos : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:54
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:54
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:54
      protoversion : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:54
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:54
      pad : aliased anon_array6342;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:55
      identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:56
      options : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:56
      data : aliased anon_array4269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:53

   type ddsi_sertype_plist is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:64
      native_encoding_identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:65
      keyparam : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:63

   ddsi_sertype_ops_plist : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ops_plist";

   ddsi_serdata_ops_plist : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_plist.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_plist";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_plist_h;
