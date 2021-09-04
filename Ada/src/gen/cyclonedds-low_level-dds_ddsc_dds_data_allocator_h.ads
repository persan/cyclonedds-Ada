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
  -- * Copyright(c) 2021 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

  -- A quick-and-dirty provisional interface  
   type anon4043_array3727 is array (0 .. 63) of aliased unsigned_char;
   type anon4043_union4044 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            bytes : aliased anon4043_array3727;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:31
         when 1 =>
            align_ptr : System.Address;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:32
         when others =>
            align_u64 : aliased unsigned_long;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:33
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type dds_data_allocator is record
      entity : aliased CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:29
      opaque : aliased anon4043_union4044;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:28

   subtype dds_data_allocator_t is dds_data_allocator;  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:35

  --* @brief Initialize an object for performing allocations/frees in the context of a reader/writer
  -- *
  -- * The operation will fall back to standard heap allocation if nothing better is available.
  -- *
  -- * @param[in] entity the handle of the entity
  -- * @param[out] data_allocator opaque allocator object to initialize
  -- *
  -- * @returns success or a generic error indication
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *    the allocator object was successfully initialized
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *    entity is invalid, data_allocator is a null pointer
  -- * @retval DDS_RETCODE_PRECONDITION_NOT_MET
  -- *    Cyclone DDS is not initialized
  -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
  -- *    operation not supported on this entity
  --  

   function dds_data_allocator_init (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; data_allocator : access dds_data_allocator_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_init";

  --* @brief Initialize an object for performing standard allocations/frees on the heap
  -- *
  -- * @param[out] data_allocator opaque allocator object to initialize
  -- *
  -- * @returns success or a generic error indication
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *    the allocator object was successfully initialized
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *    entity is invalid, data_allocator is a null pointer
  -- * @retval DDS_RETCODE_PRECONDITION_NOT_MET
  -- *    Cyclone DDS is not initialized
  -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
  -- *    operation not supported on this entity
  --  

   function dds_data_allocator_init_heap (data_allocator : access dds_data_allocator_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_init_heap";

  --* @brief Finalize a previously initialized allocator object
  -- *
  -- * @param[in,out] data_allocator object to finalize
  -- *
  -- * @returns success or an error indication
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *    the data was successfully finalized
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *    data_allocator does not reference a valid entity
  -- * @retval DDS_RETCODE_PRECONDITION_NOT_MET
  -- *    Cyclone DDS is not initialized
  --  

   function dds_data_allocator_fini (data_allocator : access dds_data_allocator_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_fini";

  --* @brief Allocate memory using the given allocator
  -- *
  -- * @param[in,out] data_allocator  initialized allocator object
  -- * @param[in] size minimum number of bytes to allocate with suitable alignment
  -- *
  -- * @returns a pointer to unaliased, uninitialized memory of at least the requested size, or NULL
  --  

   function dds_data_allocator_alloc (data_allocator : access dds_data_allocator_t; size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_alloc";

  --* @brief Release memory using the given allocator
  -- *
  -- * @param[in,out] data_allocator  initialized allocator object
  -- * @param[in] ptr memory to free
  -- *
  -- * @returns success or an error indication
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *    the memory was successfully released
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *    data_allocator does not reference a valid entity
  -- *  @retval DDS_RETCODE_PRECONDITION_NOT_MET
  -- *    dds_data_allocator already finalized
  --  

   function dds_data_allocator_free (data_allocator : access dds_data_allocator_t; ptr : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "dds_data_allocator_free";

  --* @brief Check if a Loan is available to reader/writer
  -- *
  -- * @param[in] entity the handle of the entity
  -- *
  -- * @returns loan available or not
  --  

   function dds_is_loan_available (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return Extensions.bool  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "dds_is_loan_available";

   function is_loan_available (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return Extensions.bool  -- /usr/gnat/include/dds/ddsc/dds_data_allocator.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "is_loan_available";

end CycloneDDS.Low_Level.dds_ddsc_dds_data_allocator_h;
