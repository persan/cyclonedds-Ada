pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_iid_h is

   type anon_array3324 is array (0 .. 3) of aliased Interfaces.Unsigned_32;
   type ddsi_iid is record
      counter : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_iid.h:24
      key : aliased anon_array3324;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_iid.h:25
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_iid.h:23

   procedure ddsi_iid_init  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_iid.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_iid_init";

   procedure ddsi_iid_fini  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_iid.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_iid_fini";

   function ddsi_iid_gen return Interfaces.Unsigned_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_iid.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_iid_gen";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_iid_h;
