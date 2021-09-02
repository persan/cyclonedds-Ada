pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.netinet_in_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_udp_h is

   type nn_udpv4mcgen_address is record
      ipv4 : aliased CycloneDDS.Low_Level.netinet_in_h.in_addr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:21
      base : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:22
      count : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:23
      idx : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:24
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:19

   subtype nn_udpv4mcgen_address_t is nn_udpv4mcgen_address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:25

   function ddsi_udp_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_udp.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_udp_init";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_udp_h;
