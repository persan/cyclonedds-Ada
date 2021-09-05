pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_process_h is

   PRIdPID : aliased constant String :=
     "d" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsrt/process.h:40
   DDSRT_HAVE_MULTI_PROCESS : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/process.h:41

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

   -- typedef void *TaskHandle_t
   -- DDSRT_WITH_FREERTOS
   -- _WIN32
   -- typedef struct wind_rtp *RTP_ID
   subtype ddsrt_pid_t is int;

   --*
   -- * @brief Return process ID (PID) of the calling process.
   -- *
   -- * @returns The process ID of the calling process.
   --

   function ddsrt_getpid return ddsrt_pid_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_getpid";

end CycloneDDS.Low_Level.dds_ddsrt_process_h;
