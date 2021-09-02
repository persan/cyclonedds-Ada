pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;


with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_ifaddrs_h is

   type ddsrt_iftype is 
     (DDSRT_IFTYPE_UNKNOWN,
      DDSRT_IFTYPE_WIRED,
      DDSRT_IFTYPE_WIFI)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:21

   type ddsrt_ifaddrs;
   type ddsrt_ifaddrs is record
      next : access ddsrt_ifaddrs;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:28
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:29
      index : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:30
      flags : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:31
      c_type : aliased ddsrt_iftype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:32
      addr : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:33
      netmask : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:34
      broadaddr : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:27

   subtype ddsrt_ifaddrs_t is ddsrt_ifaddrs;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:38

   function ddsrt_getifaddrs (ifap : System.Address; afs : access int) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getifaddrs";

   procedure ddsrt_freeifaddrs (ifa : access ddsrt_ifaddrs_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_freeifaddrs";

   function ddsrt_eth_get_mac_addr (interface_name : Interfaces.C.Strings.chars_ptr; mac_addr : access unsigned_char) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/ifaddrs.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_eth_get_mac_addr";

end CycloneDDS.Low_Level.dds_ddsrt_ifaddrs_h;
