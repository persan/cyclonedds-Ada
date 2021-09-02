pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with Interfaces.C.Strings;



package CycloneDDS.Low_Level.dds_ddsi_ddsi_ipaddr_h is

   function ddsi_ipaddr_is_nearby_address
     (loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      ninterf : size_t;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;
      interf_idx : access size_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_nearby_address_result  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:21
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_is_nearby_address";

   function ddsi_ipaddr_from_string
     (loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      str : Interfaces.C.Strings.chars_ptr;
      kind : Interfaces.Integer_32) return CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_locator_from_string_result  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_from_string";

   function ddsi_ipaddr_compare (sa1 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr; sa2 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_compare";

   function ddsi_ipaddr_to_string
     (dst : Interfaces.C.Strings.chars_ptr;
      sizeof_dst : size_t;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      with_port : int;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_to_string";

   procedure ddsi_ipaddr_to_loc
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      src : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      kind : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_to_loc";

   procedure ddsi_ipaddr_to_xloc
     (tran : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_factory;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;
      src : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      kind : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_to_xloc";

   procedure ddsi_ipaddr_from_loc (dst : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr_storage; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ipaddr.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ipaddr_from_loc";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_ipaddr_h;
