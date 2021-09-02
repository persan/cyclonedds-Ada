pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h is

   --  unsupported macro: DDSI_TIME_INFINITE ((ddsi_time_t) { INT32_MAX, UINT32_MAX })
   --  unsupported macro: DDSI_TIME_INVALID ((ddsi_time_t) { -1, UINT32_MAX })
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

   type ddsi_time_t is record
      seconds : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:25
      fraction : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:27

   subtype ddsi_duration_t is ddsi_time_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:31

   function ddsi_is_valid_timestamp (t : ddsi_time_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_valid_timestamp";

   function ddsi_wctime_to_ddsi_time (t : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return ddsi_time_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_wctime_to_ddsi_time";

   function ddsi_wctime_from_ddsi_time (x : ddsi_time_t) return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_wctime_from_ddsi_time";

   function ddsi_to_ddsi_duration (t : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return ddsi_duration_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_to_ddsi_duration";

   function ddsi_from_ddsi_duration (x : ddsi_duration_t) return CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_time.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_from_ddsi_duration";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h;
