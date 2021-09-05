pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_sched_h is

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

   --*
   -- * @brief Thread scheduling classes
   -- * @{
   --

   --* Schedule processes and threads according a platform default.
   --   *  DDSRT_SCHED_REALTIME for timesharing platforms and
   --   *  DDSRT_SCHED_TIMESHARE for realtime platforms
   --

   --* Schedule processes and threads on realtime basis,
   --   *  on most platforms implying:
   --   *  - Fixed Priority
   --   *  - Preemption
   --   *  - Either "First In First Out" or "Round Robin"
   --

   --* Schedule processes and threads on timesharing basis,
   --    *  on most platforms implying:
   --    *  - Dynamic Priority to guarantee fair share
   --    *  - Preemption
   --

   type ddsrt_sched_t is
     (DDSRT_SCHED_DEFAULT, DDSRT_SCHED_REALTIME, DDSRT_SCHED_TIMESHARE) with
      Convention => C;

      --* @}
end CycloneDDS.Low_Level.dds_ddsrt_sched_h;
