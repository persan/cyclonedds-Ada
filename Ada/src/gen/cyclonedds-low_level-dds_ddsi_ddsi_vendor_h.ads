pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h is

   NN_VENDORID_MINOR_RTI : constant := 16#01#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:26
   NN_VENDORID_MINOR_ADLINK_OSPL : constant := 16#02#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:27
   NN_VENDORID_MINOR_OCI : constant := 16#03#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:28
   NN_VENDORID_MINOR_MILSOFT : constant := 16#04#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:29
   NN_VENDORID_MINOR_KONGSBERG : constant := 16#05#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:30
   NN_VENDORID_MINOR_TWINOAKS : constant := 16#06#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:31
   NN_VENDORID_MINOR_LAKOTA : constant := 16#07#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:32
   NN_VENDORID_MINOR_ICOUP : constant := 16#08#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:33
   NN_VENDORID_MINOR_ETRI : constant := 16#09#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:34
   NN_VENDORID_MINOR_RTI_MICRO : constant := 16#0a#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:35
   NN_VENDORID_MINOR_ADLINK_JAVA : constant := 16#0b#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:36
   NN_VENDORID_MINOR_ADLINK_GATEWAY : constant := 16#0c#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:37
   NN_VENDORID_MINOR_ADLINK_LITE : constant := 16#0d#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:38
   NN_VENDORID_MINOR_TECHNICOLOR : constant := 16#0e#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:39
   NN_VENDORID_MINOR_EPROSIMA : constant := 16#0f#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:40
   NN_VENDORID_MINOR_ECLIPSE : constant := 16#10#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:41
   NN_VENDORID_MINOR_ADLINK_CLOUD : constant := 16#20#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:42
   --  unsupported macro: NN_VENDORID_INIT(vendor) {{ 0x01, NN_VENDORID_MINOR_ ##vendor }}
   --  unsupported macro: NN_VENDORID_INIT_UNKNOWN {{ 0x00, 0x00 }}
   --  arg-macro: function NN_VENDORID (vendor)
   --    return (nn_vendorid_t) NN_VENDORID_INIT(vendor);
   --  unsupported macro: NN_VENDORID_UNKNOWN ((nn_vendorid_t) NN_VENDORID_INIT_UNKNOWN)
   --  unsupported macro: NN_VENDORID_ECLIPSE NN_VENDORID(ECLIPSE)

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

   type nn_vendorid_t_array4524 is array (0 .. 1) of aliased unsigned_char;
   type nn_vendorid_t is record
      id : aliased nn_vendorid_t_array4524;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:22

  -- All existing vendor codes have the major part equal to 1 (and this will probably be true for a long, long time)  
   function vendor_equals (a : nn_vendorid_t; b : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_equals";

   function vendor_is_eclipse (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_eclipse";

   function vendor_is_rti (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_rti";

   function vendor_is_opensplice (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_opensplice";

   function vendor_is_twinoaks (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_twinoaks";

   function vendor_is_eprosima (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_eprosima";

   function vendor_is_cloud (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_cloud";

   function vendor_is_eclipse_or_opensplice (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_eclipse_or_opensplice";

   function vendor_is_adlink (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_adlink";

   function vendor_is_eclipse_or_adlink (vendor : nn_vendorid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_vendor.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "vendor_is_eclipse_or_adlink";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
