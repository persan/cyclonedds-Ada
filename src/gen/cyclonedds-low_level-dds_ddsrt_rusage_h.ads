pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;

package CycloneDDS.Low_Level.dds_ddsrt_rusage_h is

   DDSRT_HAVE_RUSAGE : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/rusage.h:26

-- * Copyright(c) 2006 to 2018 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   -- User CPU time used.
   -- System CPU time used.
   -- Maximum resident set size in bytes.
   -- Integral unshared data size. Not maintained on (at least)
   --                   Linux and Windows.

   -- Voluntary context switches. Not maintained on Windows.
   -- Involuntary context switches. Not maintained on Windows.
   type ddsrt_rusage_t is record
      utime  : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
      stime  : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
      maxrss : aliased unsigned_long;
      idrss  : aliased unsigned_long;
      nvcsw  : aliased unsigned_long;
      nivcsw : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsrt_getrusage_who is (DDSRT_RUSAGE_SELF, DDSRT_RUSAGE_THREAD) with
      Convention => C;

      --*
      -- * @brief Get resource usage for the current thread or process.
      -- *
      -- * @param[in]  who    DDSRT_RUSAGE_SELF or DDSRT_RUSAGE_THREAD.
      -- * @param[in]  usage  Structure where resource usage is returned.
      -- *
      -- * @returns A dds_return_t indicating success or failure.
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *             Resource usage successfully returned in @usage.
      -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
      -- *             There were not enough resources to get resource usage.
      -- * @retval DDS_RETCODE_ERROR
      -- *             An unidentified error occurred.
      --

   function ddsrt_getrusage
     (who : ddsrt_getrusage_who; usage : access ddsrt_rusage_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_getrusage";

      --*
      -- * @brief Get resource usage for some thread.
      -- *
      -- * @param[in]  tid    id of the thread of to get the resource usage for
      -- * @param[in]  usage  Structure where resource usage is returned.
      -- *
      -- * @returns A dds_return_t indicating success or failure.
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *             Resource usage successfully returned in @usage.
      -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
      -- *             There were not enough resources to get resource usage.
      -- * @retval DDS_RETCODE_ERROR
      -- *             An unidentified error occurred.
      --

   function ddsrt_getrusage_anythread
     (tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h
        .ddsrt_thread_list_id_t;
      usage : access ddsrt_rusage_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_getrusage_anythread";

end CycloneDDS.Low_Level.dds_ddsrt_rusage_h;
