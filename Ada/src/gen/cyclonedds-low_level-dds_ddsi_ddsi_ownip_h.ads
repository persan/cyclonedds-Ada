pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h is

   MAX_INTERFACES : constant := 128;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:27

   type nn_interface is record
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:29
      extloc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:30
      netmask : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:31
      if_index : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:32
      mc_capable : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:33
      mc_flaky : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:34
      point_to_point : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:35
      loopback : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:36
      link_local : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:37
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:38
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:28

   function find_own_ip (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; requested_address : Interfaces.C.Strings.chars_ptr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ownip.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "find_own_ip";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
