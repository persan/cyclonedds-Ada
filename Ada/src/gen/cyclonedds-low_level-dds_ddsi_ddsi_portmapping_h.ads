pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

with Interfaces.C.Strings;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h is

   type ddsi_port is 
     (DDSI_PORT_MULTI_DISC,
      DDSI_PORT_MULTI_DATA,
      DDSI_PORT_UNI_DISC,
      DDSI_PORT_UNI_DATA)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:23

   type ddsi_portmapping is record
      base : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:31
      dg : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:32
      pg : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:33
      d0 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:34
      d1 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:35
      d2 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:36
      d3 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:37
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:30

   function ddsi_valid_portmapping
     (config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      participant_index : Interfaces.Integer_32;
      msg : Interfaces.C.Strings.chars_ptr;
      msgsize : size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_valid_portmapping";

   function ddsi_get_port
     (config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      which : ddsi_port;
      participant_index : Interfaces.Integer_32) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_portmapping.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_get_port";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h;
