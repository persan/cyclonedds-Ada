pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h is

   type anon_array1789 is array (0 .. 15) of aliased unsigned_char;
   type ddsi_keyhash is record
      value : aliased anon_array1789;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_keyhash.h:20
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_keyhash.h:19

   subtype ddsi_keyhash_t is ddsi_keyhash;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_keyhash.h:21

end CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;
