pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_avl_h;


package CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h is

   type inverse_uint32_set_node is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:22
      min : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:23
      max : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:23
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:21

   type inverse_uint32_set is record
      ids : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:26
      cursor : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:27
      min : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:28
      max : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:28
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:25

   procedure inverse_uint32_set_init
     (set : access inverse_uint32_set;
      min : Interfaces.Unsigned_32;
      max : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "inverse_uint32_set_init";

   procedure inverse_uint32_set_fini (set : access inverse_uint32_set)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "inverse_uint32_set_fini";

   function inverse_uint32_set_alloc (id : access Interfaces.Unsigned_32; set : access inverse_uint32_set) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "inverse_uint32_set_alloc";

   procedure inverse_uint32_set_free (set : access inverse_uint32_set; id : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_inverse_uint32_set.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "inverse_uint32_set_free";

end CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h;
