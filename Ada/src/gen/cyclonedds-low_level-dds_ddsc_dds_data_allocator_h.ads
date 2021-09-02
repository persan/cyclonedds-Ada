pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

with CycloneDDS.Low_Level.dds_dds_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsc_dds_data_allocator_h is

   --  unsupported macro: DDS_DATA_ALLOCATOR_MAX_SIZE (8 * sizeof (void *))
   type anon_array1993 is array (0 .. 63) of aliased unsigned_char;
   type anon_union1991 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            bytes : aliased anon_array1993;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:31
         when 1 =>
            align_ptr : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:32
         when others =>
            align_u64 : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:33
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type dds_data_allocator is record
      entity : aliased CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:29
      opaque : aliased anon_union1991;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:28

   subtype dds_data_allocator_t is dds_data_allocator;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:35

   function dds_data_allocator_init (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; data_allocator : access dds_data_allocator_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_init";

   function dds_data_allocator_init_heap (data_allocator : access dds_data_allocator_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_init_heap";

   function dds_data_allocator_fini (data_allocator : access dds_data_allocator_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_fini";

   function dds_data_allocator_alloc (data_allocator : access dds_data_allocator_t; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_alloc";

   function dds_data_allocator_free (data_allocator : access dds_data_allocator_t; ptr : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_free";

   function dds_is_loan_available (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "dds_is_loan_available";

   function is_loan_available (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_data_allocator.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "is_loan_available";

end CycloneDDS.Low_Level.dds_ddsc_dds_data_allocator_h;
