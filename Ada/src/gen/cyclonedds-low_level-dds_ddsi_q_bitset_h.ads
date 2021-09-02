pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsi_q_bitset_h is

   function nn_bitset_isset
     (numbits : Interfaces.Unsigned_32;
      bits : access Interfaces.Unsigned_32;
      idx : Interfaces.Unsigned_32) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bitset.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_isset";

   procedure nn_bitset_set
     (numbits : Interfaces.Unsigned_32;
      bits : access Interfaces.Unsigned_32;
      idx : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bitset.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_set";

   procedure nn_bitset_clear
     (numbits : Interfaces.Unsigned_32;
      bits : access Interfaces.Unsigned_32;
      idx : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bitset.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_clear";

   procedure nn_bitset_zero (numbits : Interfaces.Unsigned_32; bits : access Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bitset.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_zero";

   procedure nn_bitset_one (numbits : Interfaces.Unsigned_32; bits : access Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bitset.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_one";

end CycloneDDS.Low_Level.dds_ddsi_q_bitset_h;
