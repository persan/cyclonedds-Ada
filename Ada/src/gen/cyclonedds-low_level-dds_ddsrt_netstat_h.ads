pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_netstat_h is

   DDSRT_HAVE_NETSTAT : constant := (1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:21

  -- * Copyright(c) 2019 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   type ddsrt_netstat is record
      ipkt : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:33
      opkt : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:34
      ibytes : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:35
      obytes : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:32

  --*
  -- * @brief Platform dependent control structure for network statistics
  --  

   type ddsrt_netstat_control is null record;   -- incomplete struct

  --*
  -- * @brief Prepare for gathering network statistics for specified interface.
  --  

   function ddsrt_netstat_new (control : System.Address; device : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_netstat_new";

  --*
  -- * @brief Release resources for gathering network statistics.
  --  

   function ddsrt_netstat_free (control : access ddsrt_netstat_control) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_netstat_free";

  --*
  -- * @brief Get network statistics.
  --  

   function ddsrt_netstat_get (control : access ddsrt_netstat_control; stats : access ddsrt_netstat) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/netstat.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_netstat_get";

end CycloneDDS.Low_Level.dds_ddsrt_netstat_h;
