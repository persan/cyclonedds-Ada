pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;




with CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h is

   DDSI_TRAN_CONN : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:31
   DDSI_TRAN_LISTENER : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:32

   DDSI_TRAN_ON_CONNECT : constant := 16#0001#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:36

   DDSI_LOCSTRLEN : constant := 81;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:309

   type ddsi_tran_base;
   type ddsi_tran_base_t is access all ddsi_tran_base;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:40

   type ddsi_tran_conn;
   type ddsi_tran_conn_t is access all ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:41

   type ddsi_tran_listener;
   type ddsi_tran_listener_t is access all ddsi_tran_listener;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:42

   type ddsi_tran_factory;
   type ddsi_tran_factory_t is access all ddsi_tran_factory;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:43

   type ddsi_tran_qos;
   subtype ddsi_tran_qos_t is ddsi_tran_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:44

   type ddsi_tran_read_fn_t is access function
        (arg1 : ddsi_tran_conn_t;
         arg2 : access unsigned_char;
         arg3 : size_t;
         arg4 : Extensions.bool;
         arg5 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return CycloneDDS.Low_Level.unistd_h.ssize_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:48

   type ddsi_tran_write_fn_t is access function
        (arg1 : ddsi_tran_conn_t;
         arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg3 : size_t;
         arg4 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;
         arg5 : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.unistd_h.ssize_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:49

   type ddsi_tran_locator_fn_t is access function
        (arg1 : ddsi_tran_factory_t;
         arg2 : ddsi_tran_base_t;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:50

   type ddsi_tran_supports_fn_t is access function (arg1 : access constant ddsi_tran_factory; arg2 : Interfaces.Integer_32) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:51

   type ddsi_tran_handle_fn_t is access function (arg1 : ddsi_tran_base_t) return CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:52

   type ddsi_tran_listen_fn_t is access function (arg1 : ddsi_tran_listener_t) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:53

   type ddsi_tran_free_fn_t is access procedure (arg1 : ddsi_tran_factory_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:54

   type ddsi_tran_peer_locator_fn_t is access procedure (arg1 : ddsi_tran_conn_t; arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:55

   type ddsi_tran_disable_multiplexing_fn_t is access procedure (arg1 : ddsi_tran_conn_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:56

   type ddsi_tran_accept_fn_t is access function (arg1 : ddsi_tran_listener_t) return ddsi_tran_conn_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:57

   type ddsi_tran_create_conn_fn_t is access function
        (arg1 : System.Address;
         arg2 : ddsi_tran_factory_t;
         arg3 : Interfaces.Unsigned_32;
         arg4 : access constant ddsi_tran_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:58

   type ddsi_tran_create_listener_fn_t is access function
        (arg1 : System.Address;
         arg2 : ddsi_tran_factory_t;
         arg3 : Interfaces.Unsigned_32;
         arg4 : access constant ddsi_tran_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:59

   type ddsi_tran_release_conn_fn_t is access procedure (arg1 : ddsi_tran_conn_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:60

   type ddsi_tran_close_conn_fn_t is access procedure (arg1 : ddsi_tran_conn_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:61

   type ddsi_tran_unblock_listener_fn_t is access procedure (arg1 : ddsi_tran_listener_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:62

   type ddsi_tran_release_listener_fn_t is access procedure (arg1 : ddsi_tran_listener_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:63

   type ddsi_tran_join_mc_fn_t is access function
        (arg1 : ddsi_tran_conn_t;
         arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg4 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:64

   type ddsi_tran_leave_mc_fn_t is access function
        (arg1 : ddsi_tran_conn_t;
         arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg4 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:65

   type ddsi_is_loopbackaddr_fn_t is access function (arg1 : access constant ddsi_tran_factory; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:66

   type ddsi_is_mcaddr_fn_t is access function (arg1 : access constant ddsi_tran_factory; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:67

   type ddsi_is_ssm_mcaddr_fn_t is access function (arg1 : access constant ddsi_tran_factory; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:68

   type ddsi_is_valid_port_fn_t is access function (arg1 : access constant ddsi_tran_factory; arg2 : Interfaces.Unsigned_32) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:69

   type ddsi_receive_buffer_size_fn_t is access function (arg1 : access constant ddsi_tran_factory) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:70

   type ddsi_nearby_address_result is 
     (DNAR_DISTANT,
      DNAR_LOCAL)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:72

   type ddsi_is_nearby_address_fn_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg2 : size_t;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;
         arg4 : access size_t) return ddsi_nearby_address_result
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:77

   type ddsi_locator_from_string_result is 
     (AFSR_OK,
      AFSR_INVALID,
      AFSR_UNKNOWN,
      AFSR_MISMATCH)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:79

   type ddsi_locator_from_string_fn_t is access function
        (arg1 : access constant ddsi_tran_factory;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg3 : Interfaces.C.Strings.chars_ptr) return ddsi_locator_from_string_result
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:86

   type ddsi_locator_from_sockaddr_fn_t is access function
        (arg1 : access constant ddsi_tran_factory;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg3 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:88

   type ddsi_locator_to_string_fn_t is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : size_t;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
         arg4 : ddsi_tran_conn_t;
         arg5 : int) return Interfaces.C.Strings.chars_ptr
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:90

   type ddsi_enumerate_interfaces_fn_t is access function
        (arg1 : ddsi_tran_factory_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_transport_selector;
         arg3 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:92

   type ddsi_tran_base is record
      m_port : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:99
      m_trantype : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:100
      m_multicast : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:101
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:102
      m_handle_fn : ddsi_tran_handle_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:106
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:95

   type ddsi_tran_conn is record
      m_base : aliased ddsi_tran_base;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:111
      m_read_fn : ddsi_tran_read_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:115
      m_write_fn : ddsi_tran_write_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:116
      m_peer_locator_fn : ddsi_tran_peer_locator_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:117
      m_disable_multiplexing_fn : ddsi_tran_disable_multiplexing_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:118
      m_locator_fn : ddsi_tran_locator_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:119
      m_server : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:123
      m_connless : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:124
      m_stream : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:125
      m_closed : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:126
      m_count : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:127
      m_interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:131
      m_factory : ddsi_tran_factory_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:132
      m_listener : ddsi_tran_listener_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:133
      m_conn : ddsi_tran_conn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:134
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:109

   type ddsi_tran_listener is record
      m_base : aliased ddsi_tran_base;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:139
      m_listen_fn : ddsi_tran_listen_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:143
      m_accept_fn : ddsi_tran_accept_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:144
      m_locator_fn : ddsi_tran_locator_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:145
      m_connections : ddsi_tran_conn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:149
      m_factory : ddsi_tran_factory_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:150
      m_listener : ddsi_tran_listener_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:151
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:137

   type ddsi_tran_factory is record
      m_create_conn_fn : ddsi_tran_create_conn_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:158
      m_create_listener_fn : ddsi_tran_create_listener_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:159
      m_release_conn_fn : ddsi_tran_release_conn_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:160
      m_close_conn_fn : ddsi_tran_close_conn_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:161
      m_unblock_listener_fn : ddsi_tran_unblock_listener_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:162
      m_release_listener_fn : ddsi_tran_release_listener_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:163
      m_supports_fn : ddsi_tran_supports_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:164
      m_free_fn : ddsi_tran_free_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:165
      m_join_mc_fn : ddsi_tran_join_mc_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:166
      m_leave_mc_fn : ddsi_tran_leave_mc_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:167
      m_is_loopbackaddr_fn : ddsi_is_loopbackaddr_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:168
      m_is_mcaddr_fn : ddsi_is_mcaddr_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:169
      m_is_ssm_mcaddr_fn : ddsi_is_ssm_mcaddr_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:170
      m_is_nearby_address_fn : ddsi_is_nearby_address_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:171
      m_locator_from_string_fn : ddsi_locator_from_string_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:172
      m_locator_to_string_fn : ddsi_locator_to_string_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:173
      m_enumerate_interfaces_fn : ddsi_enumerate_interfaces_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:174
      m_is_valid_port_fn : ddsi_is_valid_port_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:175
      m_receive_buffer_size_fn : ddsi_receive_buffer_size_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:176
      m_locator_from_sockaddr_fn : ddsi_locator_from_sockaddr_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:177
      m_typename : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:182
      m_connless : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:187
      m_stream : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:191
      m_enable : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:198
      m_enable_spdp : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:203
      m_default_spdp_address : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:207
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:209
      m_factory : ddsi_tran_factory_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:213
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:154

   type ddsi_tran_qos_purpose is 
     (DDSI_TRAN_QOS_XMIT,
      DDSI_TRAN_QOS_RECV_UC,
      DDSI_TRAN_QOS_RECV_MC)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:216

   type ddsi_tran_qos is record
      m_purpose : aliased ddsi_tran_qos_purpose;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:224
      m_diffserv : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:225
      m_interface : access CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:226
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:222

   procedure ddsi_tran_factories_fini (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tran_factories_fini";

   procedure ddsi_factory_add (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; factory : ddsi_tran_factory_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_add";

   procedure ddsi_factory_free (factory : ddsi_tran_factory_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_free";

   function ddsi_factory_find (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; c_type : Interfaces.C.Strings.chars_ptr) return ddsi_tran_factory_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_find";

   function ddsi_factory_find_supported_kind (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; kind : Interfaces.Integer_32) return ddsi_tran_factory_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_find_supported_kind";

   procedure ddsi_factory_conn_init
     (factory : access constant ddsi_tran_factory;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;
      conn : ddsi_tran_conn_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_conn_init";

   function ddsi_factory_supports (factory : access constant ddsi_tran_factory; kind : Interfaces.Integer_32) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_supports";

   function ddsi_is_valid_port (factory : access constant ddsi_tran_factory; port : Interfaces.Unsigned_32) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_valid_port";

   function ddsi_receive_buffer_size (factory : access constant ddsi_tran_factory) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_receive_buffer_size";

   function ddsi_factory_create_conn
     (conn : System.Address;
      factory : ddsi_tran_factory_t;
      port : Interfaces.Unsigned_32;
      qos : access constant ddsi_tran_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_create_conn";

   function ddsi_factory_create_listener
     (listener : System.Address;
      factory : ddsi_tran_factory_t;
      port : Interfaces.Unsigned_32;
      qos : access constant ddsi_tran_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_factory_create_listener";

   procedure ddsi_tran_free (base : ddsi_tran_base_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tran_free";

   function ddsi_tran_handle (base : ddsi_tran_base_t) return CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tran_handle";

   function ddsi_conn_handle (conn : ddsi_tran_conn_t) return CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_handle";

   function ddsi_conn_type (conn : access constant ddsi_tran_conn) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_type";

   function ddsi_conn_port (conn : access constant ddsi_tran_conn) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_port";

   function ddsi_conn_locator (conn : ddsi_tran_conn_t; loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_locator";

   function ddsi_conn_write
     (conn : ddsi_tran_conn_t;
      dst : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      niov : size_t;
      iov : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;
      flags : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.unistd_h.ssize_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_write";

   function ddsi_conn_read
     (conn : ddsi_tran_conn_t;
      buf : access unsigned_char;
      len : size_t;
      allow_spurious : Extensions.bool;
      srcloc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return CycloneDDS.Low_Level.unistd_h.ssize_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_read";

   function ddsi_conn_peer_locator (conn : ddsi_tran_conn_t; loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_peer_locator";

   procedure ddsi_conn_disable_multiplexing (conn : ddsi_tran_conn_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_disable_multiplexing";

   procedure ddsi_conn_add_ref (conn : ddsi_tran_conn_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_add_ref";

   procedure ddsi_conn_free (conn : ddsi_tran_conn_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_free";

   function ddsi_conn_join_mc
     (conn : ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_join_mc";

   function ddsi_conn_leave_mc
     (conn : ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_leave_mc";

   procedure ddsi_conn_transfer_group_membership (conn : ddsi_tran_conn_t; newconn : ddsi_tran_conn_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_transfer_group_membership";

   function ddsi_conn_rejoin_transferred_mcgroups (conn : ddsi_tran_conn_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_conn_rejoin_transferred_mcgroups";

   function ddsi_is_loopbackaddr (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_loopbackaddr";

   function ddsi_is_mcaddr (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_mcaddr";

   function ddsi_is_ssm_mcaddr (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_ssm_mcaddr";

   function ddsi_is_nearby_address
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      ninterf : size_t;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;
      interf_idx : access size_t) return ddsi_nearby_address_result  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_nearby_address";

   function ddsi_locator_from_string
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      str : Interfaces.C.Strings.chars_ptr;
      default_factory : ddsi_tran_factory_t) return ddsi_locator_from_string_result  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_locator_from_string";

   function ddsi_locator_from_sockaddr
     (tran : access constant ddsi_tran_factory;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      the_sockaddr : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_socket_h.sockaddr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_locator_from_sockaddr";

   function ddsi_xlocator_to_string
     (dst : Interfaces.C.Strings.chars_ptr;
      sizeof_dst : size_t;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xlocator_to_string";

   function ddsi_locator_to_string
     (dst : Interfaces.C.Strings.chars_ptr;
      sizeof_dst : size_t;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_locator_to_string";

   function ddsi_xlocator_to_string_no_port
     (dst : Interfaces.C.Strings.chars_ptr;
      sizeof_dst : size_t;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xlocator_to_string_no_port";

   function ddsi_locator_to_string_no_port
     (dst : Interfaces.C.Strings.chars_ptr;
      sizeof_dst : size_t;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_locator_to_string_no_port";

   function ddsi_enumerate_interfaces
     (factory : ddsi_tran_factory_t;
      transport_selector : CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_transport_selector;
      interfs : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_enumerate_interfaces";

   function ddsi_listener_locator (listener : ddsi_tran_listener_t; loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_listener_locator";

   function ddsi_listener_listen (listener : ddsi_tran_listener_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_listener_listen";

   function ddsi_listener_accept (listener : ddsi_tran_listener_t) return ddsi_tran_conn_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_listener_accept";

   procedure ddsi_listener_unblock (listener : ddsi_tran_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_listener_unblock";

   procedure ddsi_listener_free (listener : ddsi_tran_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_tran.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_listener_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
