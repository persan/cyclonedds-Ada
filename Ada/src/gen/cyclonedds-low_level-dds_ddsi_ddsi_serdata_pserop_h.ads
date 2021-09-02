pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
with System;
with Interfaces.C.Extensions;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_pserop_h is

   subtype anon_array4269 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_pserop_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      sample : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      keyless : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      pos : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:42
      options : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:42
      data : aliased anon_array4269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:40

   subtype anon_array6346 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_pserop is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      sample : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      keyless : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      pos : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      pad : aliased anon_array6346;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:53
      identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:54
      options : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:54
      data : aliased anon_array4269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:51

   type ddsi_sertype_pserop is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:62
      native_encoding_identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:63
      memsize : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:64
      nops : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:65
      ops : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:66
      nops_key : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:67
      ops_key : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:61

   ddsi_sertype_ops_pserop : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ops_pserop";

   ddsi_serdata_ops_pserop : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_pserop";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_pserop_h;
