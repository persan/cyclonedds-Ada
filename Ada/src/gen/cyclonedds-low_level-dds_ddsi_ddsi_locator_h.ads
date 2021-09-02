pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h is

   type anon_array1789 is array (0 .. 15) of aliased unsigned_char;
   type ddsi_locator_t is record
      kind : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:26
      port : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:27
      address : aliased anon_array1789;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:28
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:29

   type ddsi_xlocator_t is record
      c : aliased ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:31
      conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_locator.h:33

end CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
