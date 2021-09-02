pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with Interfaces.C.Extensions;


with CycloneDDS.Low_Level.dds_ddsrt_time_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h is

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

  -- DDS_EXPORT inline i.c.w. __attributes__((visibility...)) and some compilers:  
   type ddsi_writer_info is record
      guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:38
      auto_dispose : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:39
      ownership_strength : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:40
      iid : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:41
      lifespan_exp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:36

   type ddsi_rhc;
   type ddsi_rhc_free_t is access procedure (arg1 : access ddsi_rhc)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:47

   type ddsi_rhc_store_t is access function
        (arg1 : access ddsi_rhc;
         arg2 : access constant ddsi_writer_info;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
         arg4 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return Extensions.bool
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:48

   type ddsi_rhc_unregister_wr_t is access procedure (arg1 : access ddsi_rhc; arg2 : access constant ddsi_writer_info)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:49

   type ddsi_rhc_relinquish_ownership_t is access procedure (arg1 : access ddsi_rhc; arg2 : unsigned_long)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:50

   type ddsi_rhc_set_qos_t is access procedure (arg1 : access ddsi_rhc; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:51

   type ddsi_rhc_ops is record
      store : ddsi_rhc_store_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:54
      unregister_wr : ddsi_rhc_unregister_wr_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:55
      relinquish_ownership : ddsi_rhc_relinquish_ownership_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:56
      set_qos : ddsi_rhc_set_qos_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:57
      free : ddsi_rhc_free_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:53

   type ddsi_rhc is record
      ops : access constant ddsi_rhc_ops;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:61

   function ddsi_rhc_store
     (rhc : access ddsi_rhc;
      wrinfo : access constant ddsi_writer_info;
      sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rhc_store";

   procedure ddsi_rhc_unregister_wr (rhc : access ddsi_rhc; wrinfo : access constant ddsi_writer_info)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rhc_unregister_wr";

   procedure ddsi_rhc_relinquish_ownership (rhc : access ddsi_rhc; wr_iid : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rhc_relinquish_ownership";

   procedure ddsi_rhc_set_qos (rhc : access ddsi_rhc; qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rhc_set_qos";

   procedure ddsi_rhc_free (rhc : access ddsi_rhc)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_rhc.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rhc_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h;
