pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h is

   type anon_array2012 is array (0 .. 11) of aliased unsigned_char;
   type anon_array2014 is array (0 .. 2) of aliased Interfaces.Unsigned_32;
   type ddsi_guid_prefix (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            s : aliased anon_array2012;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:22
         when others =>
            u : aliased anon_array2014;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:23
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:21

   subtype ddsi_guid_prefix_t is ddsi_guid_prefix;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:24

   type ddsi_entityid (discr : unsigned := 0) is record
      case discr is
         when others =>
            u : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:26
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:25

   subtype ddsi_entityid_t is ddsi_entityid;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:27

   type ddsi_guid is record
      prefix : aliased ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:29
      entityid : aliased ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:28

   subtype ddsi_guid_t is ddsi_guid;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_guid.h:31

end CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
