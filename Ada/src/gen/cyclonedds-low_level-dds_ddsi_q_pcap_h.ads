pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;



package CycloneDDS.Low_Level.dds_ddsi_q_pcap_h is

   function new_pcap_file (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; name : Interfaces.C.Strings.chars_ptr) return access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_pcap.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "new_pcap_file";

   procedure write_pcap_received
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tstamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      src : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr_storage;
      dst : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr_storage;
      buf : access unsigned_char;
      sz : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_pcap.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "write_pcap_received";

   procedure write_pcap_sent
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tstamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      src : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr_storage;
      hdr : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.msghdr;
      sz : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_pcap.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "write_pcap_sent";

end CycloneDDS.Low_Level.dds_ddsi_q_pcap_h;
