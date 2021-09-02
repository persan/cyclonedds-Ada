pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.netinet_in_h;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;


with System;

with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.x86_64_linux_gnu_sys_select_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;


package CycloneDDS.Low_Level.dds_ddsrt_sockets_h is

   DDSRT_WITH_DNS : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:7
   --  unsupported macro: INET_ADDRSTRLEN_EXTENDED (INET_ADDRSTRLEN + 6)
   --  unsupported macro: INET6_ADDRSTRLEN_EXTENDED (INET6_ADDRSTRLEN + 8)

   DDSRT_AF_TERM : constant := (-1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:34

   ddsrt_in6addr_any : aliased constant CycloneDDS.Low_Level.netinet_in_h.in6_addr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_in6addr_any";

   ddsrt_in6addr_loopback : aliased constant CycloneDDS.Low_Level.netinet_in_h.in6_addr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_in6addr_loopback";

   function ddsrt_gethostname (hostname : Interfaces.C.Strings.chars_ptr; buffersize : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_gethostname";

   function ddsrt_socket
     (sockptr : access CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      domain : int;
      c_type : int;
      protocol : int) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_socket";

   function ddsrt_close (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_close";

   function ddsrt_connect
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      addr : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      addrlen : CycloneDDS.Low_Level.unistd_h.socklen_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_connect";

   function ddsrt_accept
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      addr : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      addrlen : access CycloneDDS.Low_Level.unistd_h.socklen_t;
      connptr : access CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_accept";

   function ddsrt_listen (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t; backlog : int) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_listen";

   function ddsrt_bind
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      addr : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      addrlen : CycloneDDS.Low_Level.unistd_h.socklen_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bind";

   function ddsrt_getsockname
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      addr : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      addrlen : access CycloneDDS.Low_Level.unistd_h.socklen_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getsockname";

   function ddsrt_send
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      buf : System.Address;
      len : size_t;
      flags : int;
      sent : access CycloneDDS.Low_Level.unistd_h.ssize_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_send";

   function ddsrt_sendmsg
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      msg : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.msghdr;
      flags : int;
      sent : access CycloneDDS.Low_Level.unistd_h.ssize_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sendmsg";

   function ddsrt_recv
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      buf : System.Address;
      len : size_t;
      flags : int;
      rcvd : access CycloneDDS.Low_Level.unistd_h.ssize_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_recv";

   function ddsrt_recvmsg
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      msg : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.msghdr;
      flags : int;
      rcvd : access CycloneDDS.Low_Level.unistd_h.ssize_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_recvmsg";

   function ddsrt_getsockopt
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      level : Interfaces.Integer_32;
      optname : Interfaces.Integer_32;
      optval : System.Address;
      optlen : access CycloneDDS.Low_Level.unistd_h.socklen_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getsockopt";

   function ddsrt_setsockopt
     (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t;
      level : Interfaces.Integer_32;
      optname : Interfaces.Integer_32;
      optval : System.Address;
      optlen : CycloneDDS.Low_Level.unistd_h.socklen_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_setsockopt";

   function ddsrt_setsocknonblocking (sock : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t; nonblock : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_setsocknonblocking";

   function ddsrt_select
     (nfds : Interfaces.Integer_32;
      readfds : access CycloneDDS.Low_Level.x86_64_linux_gnu_sys_select_h.fd_set;
      writefds : access CycloneDDS.Low_Level.x86_64_linux_gnu_sys_select_h.fd_set;
      errorfds : access CycloneDDS.Low_Level.x86_64_linux_gnu_sys_select_h.fd_set;
      reltime : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      ready : access Interfaces.Integer_32) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_select";

   function ddsrt_sockaddr_get_size (sa : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return CycloneDDS.Low_Level.unistd_h.socklen_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddr_get_size";

   function ddsrt_sockaddr_get_port (sa : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return Interfaces.Unsigned_16  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddr_get_port";

   function ddsrt_sockaddr_isunspecified (sa : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddr_isunspecified";

   function ddsrt_sockaddr_isloopback (sa : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddr_isloopback";

   function ddsrt_sockaddr_insamesubnet
     (sa1 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      sa2 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr;
      mask : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddr_insamesubnet";

   function ddsrt_sockaddrfromstr
     (af : int;
      str : Interfaces.C.Strings.chars_ptr;
      sa : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddrfromstr";

   function ddsrt_sockaddrtostr
     (sa : System.Address;
      buf : Interfaces.C.Strings.chars_ptr;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_sockaddrtostr";

   type anon_array3394 is array (0 .. 0) of aliased CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr_storage;
   type ddsrt_hostent_t is record
      naddrs : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:243
      addrs : aliased anon_array3394;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:244
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:245

   function ddsrt_gethostbyname
     (name : Interfaces.C.Strings.chars_ptr;
      af : int;
      hentp : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/sockets.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_gethostbyname";

end CycloneDDS.Low_Level.dds_ddsrt_sockets_h;
