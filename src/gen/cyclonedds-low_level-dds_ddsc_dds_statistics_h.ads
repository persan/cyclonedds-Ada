pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_dds_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_statistics_h is

-- * Copyright(c) 2020 ADLINK Technology Limited and others
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
   type dds_stat_kind is
     (DDS_STAT_KIND_UINT32, DDS_STAT_KIND_UINT64,
      DDS_STAT_KIND_LENGTHTIME) with
      Convention => C;

      --/< value is a 32-bit unsigned integer
      --/< value is a 64-bit unsigned integer
      --/< value is integral(length(t) dt)
      --/< name, memory owned by library
      --/< value type
   type anon4062_union4063 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u32 : aliased unsigned;
         when 1 =>
            u64 : aliased unsigned_long;
         when others =>
            lengthtime : aliased unsigned_long;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type dds_stat_keyvalue is record
      name : Interfaces.C.Strings.chars_ptr;
      kind : aliased dds_stat_kind;
      u    : aliased anon4062_union4063;
   end record with
      Convention => C_Pass_By_Copy;

      --/< handle of entity to which this set of values applies
   type anon4064_array4065 is array (0 .. 0) of aliased dds_stat_keyvalue;
   type dds_statistics is record
      entity : aliased CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      opaque : aliased unsigned_long;
      time   : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
      count  : aliased unsigned_long;
      kv     : aliased anon4064_array4065;
   end record with
      Convention => C_Pass_By_Copy;

      --/< internal data
      --/< time stamp of latest call to `dds_refresh_statistics`
      --/< number of key-value pairs
      --/< data
      --* @brief Allocate a new statistics object for entity
      -- *
      -- * This allocates and populates a newly allocated `struct dds_statistics` for the
      -- * specified entity.
      -- *
      -- * @param[in] entity       the handle of the entity
      -- *
      -- * @returns a newly allocated and populated statistics structure or NULL if entity is
      -- * invalid or doesn't support any statistics.
      --

   function dds_create_statistics
     (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t)
      return access dds_statistics with
      Import        => True,
      Convention    => C,
      External_Name => "dds_create_statistics";

--* @brief Update a previously created statistics structure with current values
      -- *
      -- * Only the time stamp and the values (and "opaque") may change.  The set of keys and the
      -- * types of the values do not change.
      -- *
      -- * @param[in,out] stat     statistics structure to update the values of
      -- *
      -- * @returns success or an error indication
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *    the data was successfully updated
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *    stats is a null pointer or the referenced entity no longer exists
      -- * @retval DDS_RETCODE_PRECONDITION_NOT_MET
      -- *    library was deinitialized
      --

   function dds_refresh_statistics
     (stat : access dds_statistics)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_refresh_statistics";

      --* @brief Free a previously created statistics object
      -- *
      -- * This frees the statistics object.  Passing a null pointer is a no-op.  The operation
      -- * succeeds also if the referenced entity no longer exists.
      -- *
      -- * @param[in] stat         statistics object to free
      --

   procedure dds_delete_statistics (stat : access dds_statistics) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_delete_statistics";

      --* @brief Lookup a specific value by name
      -- *
      -- * This looks up the specified name in the list of keys in `stat` and returns the address
      -- * of the key-value pair if present, a null pointer if not.  If `stat` is a null pointer,
      -- * it returns a null pointer.
      -- *
      -- * @param[in] stat         statistics object to lookup a name in (or NULL)
      -- * @param[in] name         name to look for
      -- *
      -- * @returns The address of the key-value pair inside `stat`, or NULL if `stat` is NULL or
      -- * `name` does not match a key in `stat.
      --

   function dds_lookup_statistic
     (stat : access constant dds_statistics;
      name : Interfaces.C.Strings.chars_ptr)
      return access constant dds_stat_keyvalue with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lookup_statistic";

end CycloneDDS.Low_Level.dds_ddsc_dds_statistics_h;
