pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

with CycloneDDS.Low_Level.dds_ddsrt_iovec_h;

with CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h is

   DDSI_TRAN_CONN : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/ddsi_tran.h:31
   DDSI_TRAN_LISTENER : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/ddsi_tran.h:32

   DDSI_TRAN_ON_CONNECT : constant :=
     16#0001#;  --  /usr/gnat/include/dds/ddsi/ddsi_tran.h:36

   DDSI_LOCSTRLEN : constant :=
     81;  --  /usr/gnat/include/dds/ddsi/ddsi_tran.h:309

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

   -- DDSI Transport module
   -- Types supporting handles
   -- Flags
   -- Core types
   type ddsi_tran_base;
   type ddsi_tran_base_t is access all ddsi_tran_base;

   type ddsi_tran_conn_record;
   type ddsi_tran_conn_t is access all ddsi_tran_conn_record;

   type ddsi_tran_listener_record;
   type ddsi_tran_listener_t is access all ddsi_tran_listener_record;

   type ddsi_tran_factory;
   type ddsi_tran_factory_t is access all ddsi_tran_factory;

   type ddsi_tran_qos_t;
   --  <>subtype ddsi_tran_qos_t is ddsi_tran_qos;

   -- Function pointer types
   type ddsi_tran_read_fn_t is access function
     (arg1 : ddsi_tran_conn_t; arg2 : access unsigned_char;
      arg3 : unsigned_long; arg4 : Extensions.bool;
      arg5 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return size_t with
      Convention => C;

   type ddsi_tran_write_fn_t is access function
     (arg1 : ddsi_tran_conn_t;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg3 : unsigned_long;
      arg4 : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h
        .ddsrt_iovec_t;
      arg5 : unsigned) return size_t with
      Convention => C;

   type ddsi_tran_locator_fn_t is access function
     (arg1 : ddsi_tran_factory_t; arg2 : ddsi_tran_base_t;
      arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Convention => C;

   type ddsi_tran_supports_fn_t is access function
     (arg1 : access constant ddsi_tran_factory; arg2 : int)
      return Extensions.bool with
      Convention => C;

   type ddsi_tran_handle_fn_t is access function
     (arg1 : ddsi_tran_base_t)
      return CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t with
      Convention => C;

   type ddsi_tran_listen_fn_t is access function
     (arg1 : ddsi_tran_listener_t) return int with
      Convention => C;

   type ddsi_tran_free_fn_t is access procedure
     (arg1 : ddsi_tran_factory_t) with
      Convention => C;

   type ddsi_tran_peer_locator_fn_t is access procedure
     (arg1 : ddsi_tran_conn_t;
      arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t) with
      Convention => C;

   type ddsi_tran_disable_multiplexing_fn_t is access procedure
     (arg1 : ddsi_tran_conn_t) with
      Convention => C;

   type ddsi_tran_accept_fn_t is access function
     (arg1 : ddsi_tran_listener_t) return ddsi_tran_conn_t with
      Convention => C;

   type ddsi_tran_create_conn_fn_t is access function
     (arg1 : System.Address; arg2 : ddsi_tran_factory_t; arg3 : unsigned;
      arg4 : access constant ddsi_tran_qos_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Convention => C;

   type ddsi_tran_create_listener_fn_t is access function
     (arg1 : System.Address; arg2 : ddsi_tran_factory_t; arg3 : unsigned;
      arg4 : access constant ddsi_tran_qos_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Convention => C;

   type ddsi_tran_release_conn_fn_t is access procedure
     (arg1 : ddsi_tran_conn_t) with
      Convention => C;

   type ddsi_tran_close_conn_fn_t is access procedure
     (arg1 : ddsi_tran_conn_t) with
      Convention => C;

   type ddsi_tran_unblock_listener_fn_t is access procedure
     (arg1 : ddsi_tran_listener_t) with
      Convention => C;

   type ddsi_tran_release_listener_fn_t is access procedure
     (arg1 : ddsi_tran_listener_t) with
      Convention => C;

   type ddsi_tran_join_mc_fn_t is access function
     (arg1 : ddsi_tran_conn_t;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg4 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface)
      return int with
      Convention => C;

   type ddsi_tran_leave_mc_fn_t is access function
     (arg1 : ddsi_tran_conn_t;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg4 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface)
      return int with
      Convention => C;

   type ddsi_is_loopbackaddr_fn_t is access function
     (arg1 : access constant ddsi_tran_factory;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Convention => C;

   type ddsi_is_mcaddr_fn_t is access function
     (arg1 : access constant ddsi_tran_factory;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Convention => C;

   type ddsi_is_ssm_mcaddr_fn_t is access function
     (arg1 : access constant ddsi_tran_factory;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Convention => C;

   type ddsi_is_valid_port_fn_t is access function
     (arg1 : access constant ddsi_tran_factory; arg2 : unsigned)
      return int with
      Convention => C;

   type ddsi_receive_buffer_size_fn_t is access function
     (arg1 : access constant ddsi_tran_factory) return unsigned with
      Convention => C;

   type ddsi_nearby_address_result is (DNAR_DISTANT, DNAR_LOCAL) with
      Convention => C;

   type ddsi_is_nearby_address_fn_t is access function
     (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg2 : unsigned_long;
      arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface;
      arg4 : access unsigned_long) return ddsi_nearby_address_result with
      Convention => C;

   type ddsi_locator_from_string_result is
     (AFSR_OK, AFSR_INVALID, AFSR_UNKNOWN, AFSR_MISMATCH) with
      Convention => C;

      -- conversion succeeded
      -- bogus input
      -- transport or hostname lookup failure
      -- recognised format, but mismatch with expected (e.g., IPv4/IPv6)
   type ddsi_locator_from_string_fn_t is access function
     (arg1 : access constant ddsi_tran_factory;
      arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg3 : Interfaces.C.Strings.chars_ptr)
      return ddsi_locator_from_string_result with
      Convention => C;

   type ddsi_locator_from_sockaddr_fn_t is access function
     (arg1 : access constant ddsi_tran_factory;
      arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg3 : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr)
      return int with
      Convention => C;

   type ddsi_locator_to_string_fn_t is access function
     (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : unsigned_long;
      arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      arg4 : ddsi_tran_conn_t; arg5 : int)
      return Interfaces.C.Strings.chars_ptr with
      Convention => C;

   type ddsi_enumerate_interfaces_fn_t is access function
     (arg1 : ddsi_tran_factory_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_transport_selector;
      arg3 : System.Address) return int with
      Convention => C;

      -- Data types
      -- Data
   type ddsi_tran_base is record
      m_port      : aliased unsigned;
      m_trantype  : aliased unsigned;
      m_multicast : aliased Extensions.bool;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      m_handle_fn : ddsi_tran_handle_fn_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- Functions
   type ddsi_tran_conn_record is record
      m_base                    : aliased ddsi_tran_base;
      m_read_fn                 : ddsi_tran_read_fn_t;
      m_write_fn                : ddsi_tran_write_fn_t;
      m_peer_locator_fn         : ddsi_tran_peer_locator_fn_t;
      m_disable_multiplexing_fn : ddsi_tran_disable_multiplexing_fn_t;
      m_locator_fn              : ddsi_tran_locator_fn_t;
      m_server                  : aliased Extensions.bool;
      m_connless                : aliased Extensions.bool;
      m_stream                  : aliased Extensions.bool;
      m_closed                  : aliased Extensions.bool;
      m_count : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      m_interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface;
      m_factory  : ddsi_tran_factory_t;
      m_listener : ddsi_tran_listener_t;
      m_conn     : ddsi_tran_conn_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- Functions
      -- Data
      -- Relationships
   type ddsi_tran_listener_record is record
      m_base        : aliased ddsi_tran_base;
      m_listen_fn   : ddsi_tran_listen_fn_t;
      m_accept_fn   : ddsi_tran_accept_fn_t;
      m_locator_fn  : ddsi_tran_locator_fn_t;
      m_connections : ddsi_tran_conn_t;
      m_factory     : ddsi_tran_factory_t;
      m_listener    : ddsi_tran_listener_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- Functions
      -- Relationships
      -- Functions
   type ddsi_tran_factory is record
      m_create_conn_fn           : ddsi_tran_create_conn_fn_t;
      m_create_listener_fn       : ddsi_tran_create_listener_fn_t;
      m_release_conn_fn          : ddsi_tran_release_conn_fn_t;
      m_close_conn_fn            : ddsi_tran_close_conn_fn_t;
      m_unblock_listener_fn      : ddsi_tran_unblock_listener_fn_t;
      m_release_listener_fn      : ddsi_tran_release_listener_fn_t;
      m_supports_fn              : ddsi_tran_supports_fn_t;
      m_free_fn                  : ddsi_tran_free_fn_t;
      m_join_mc_fn               : ddsi_tran_join_mc_fn_t;
      m_leave_mc_fn              : ddsi_tran_leave_mc_fn_t;
      m_is_loopbackaddr_fn       : ddsi_is_loopbackaddr_fn_t;
      m_is_mcaddr_fn             : ddsi_is_mcaddr_fn_t;
      m_is_ssm_mcaddr_fn         : ddsi_is_ssm_mcaddr_fn_t;
      m_is_nearby_address_fn     : ddsi_is_nearby_address_fn_t;
      m_locator_from_string_fn   : ddsi_locator_from_string_fn_t;
      m_locator_to_string_fn     : ddsi_locator_to_string_fn_t;
      m_enumerate_interfaces_fn  : ddsi_enumerate_interfaces_fn_t;
      m_is_valid_port_fn         : ddsi_is_valid_port_fn_t;
      m_receive_buffer_size_fn   : ddsi_receive_buffer_size_fn_t;
      m_locator_from_sockaddr_fn : ddsi_locator_from_sockaddr_fn_t;
      m_typename                 : Interfaces.C.Strings.chars_ptr;
      m_connless                 : aliased Extensions.bool;
      m_stream                   : aliased Extensions.bool;
      m_enable                   : aliased Extensions.bool;
      m_enable_spdp              : aliased Extensions.bool;
      m_default_spdp_address     : Interfaces.C.Strings.chars_ptr;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      m_factory                  : ddsi_tran_factory_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- Data
      --/ Transport name, also used as prefix in string representation of locator (e.g., udp/1.2.3.4)
      --/ Whether this is a connection-oriented transport like TCP (false), where a socket communicates
      --/ with one other socket after connecting; or whether it can send to any address at any time like
      --/ UDP (true).
      --/ Whether this transport deals with byte streams (TCP, true) or with datagrams (UDP, false). A
      --/ byte stream forces the upper layer to do add some framing.
      --/ Whether this transport is enabled for DDS communications. Only locators mapping handled
--/ by enabled transports are taken into account when parsing discovery data.
      --/
      --/ The usefulness of disabled transports is (currently) limited to running in UDP mode while using
--/ the TCP transport code as a portable means for providing a debug interface.
      --/ Whether this transport should be included in SPDP advertisements. Not all transports are
      --/ created equally: those that only provide a representation for an integrated pub-sub messaging
      --/ system that can be used to by-pass RTPS should not by included in anything related to SPDP.
      --/ Default SPDP address for this transport (the spec only gives an UDPv4 default one), NULL if
      --/ no default address exists.
      -- Relationships
   type ddsi_tran_qos_purpose is
     (DDSI_TRAN_QOS_XMIT, DDSI_TRAN_QOS_RECV_UC, DDSI_TRAN_QOS_RECV_MC) with
      Convention => C;

   type ddsi_tran_qos_t is record
      m_purpose   : aliased ddsi_tran_qos_purpose;
      m_diffserv  : aliased int;
      m_interface : access CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface;
   end record with
      Convention => C_Pass_By_Copy;

      -- only for purpose = XMIT
   procedure ddsi_tran_factories_fini
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_tran_factories_fini";

   procedure ddsi_factory_add
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      factory : ddsi_tran_factory_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_add";

   procedure ddsi_factory_free (factory : ddsi_tran_factory_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_free";

   function ddsi_factory_find
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      c_type : Interfaces.C.Strings.chars_ptr) return ddsi_tran_factory_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_find";

   function ddsi_factory_find_supported_kind
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      kind : int) return ddsi_tran_factory_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_find_supported_kind";

   procedure ddsi_factory_conn_init
     (factory : access constant ddsi_tran_factory;
      interf  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface;
      conn : ddsi_tran_conn_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_conn_init";

   function ddsi_factory_supports
     (factory : access constant ddsi_tran_factory; kind : int)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_supports";

   function ddsi_is_valid_port
     (factory : access constant ddsi_tran_factory; port : unsigned)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_is_valid_port";

   function ddsi_receive_buffer_size
     (factory : access constant ddsi_tran_factory) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_receive_buffer_size";

   function ddsi_factory_create_conn
     (conn : System.Address; factory : ddsi_tran_factory_t; port : unsigned;
      qos  : access constant ddsi_tran_qos_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_create_conn";

   function ddsi_factory_create_listener
     (listener : System.Address; factory : ddsi_tran_factory_t;
      port     : unsigned; qos : access constant ddsi_tran_qos_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_factory_create_listener";

   procedure ddsi_tran_free (base : ddsi_tran_base_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_tran_free";

   function ddsi_tran_handle
     (base : ddsi_tran_base_t)
      return CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_tran_handle";

   function ddsi_conn_handle
     (conn : ddsi_tran_conn_t)
      return CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_handle";

   function ddsi_conn_type
     (conn : access constant ddsi_tran_conn_t) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_type";

   function ddsi_conn_port
     (conn : access constant ddsi_tran_conn_t) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_port";

   function ddsi_conn_locator
     (conn : ddsi_tran_conn_t;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_locator";

   function ddsi_conn_write
     (conn : ddsi_tran_conn_t;
      dst  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      niov : unsigned_long;
      iov  : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h
        .ddsrt_iovec_t;
      flags : unsigned) return size_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_write";

   function ddsi_conn_read
     (conn : ddsi_tran_conn_t; buf : access unsigned_char; len : unsigned_long;
      allow_spurious : Extensions.bool;
      srcloc         : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return size_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_read";

   function ddsi_conn_peer_locator
     (conn : ddsi_tran_conn_t;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_peer_locator";

   procedure ddsi_conn_disable_multiplexing (conn : ddsi_tran_conn_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_disable_multiplexing";

   procedure ddsi_conn_add_ref (conn : ddsi_tran_conn_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_add_ref";

   procedure ddsi_conn_free (conn : ddsi_tran_conn_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_free";

   function ddsi_conn_join_mc
     (conn  : ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_join_mc";

   function ddsi_conn_leave_mc
     (conn  : ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      interf : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_leave_mc";

   procedure ddsi_conn_transfer_group_membership
     (conn : ddsi_tran_conn_t; newconn : ddsi_tran_conn_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_transfer_group_membership";

   function ddsi_conn_rejoin_transferred_mcgroups
     (conn : ddsi_tran_conn_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_conn_rejoin_transferred_mcgroups";

   function ddsi_is_loopbackaddr
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_is_loopbackaddr";

   function ddsi_is_mcaddr
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_is_mcaddr";

   function ddsi_is_ssm_mcaddr
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_is_ssm_mcaddr";

   function ddsi_is_nearby_address
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      ninterf : unsigned_long;
      interf  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface;
      interf_idx : access unsigned_long) return ddsi_nearby_address_result with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_is_nearby_address";

   function ddsi_locator_from_string
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      str             : Interfaces.C.Strings.chars_ptr;
      default_factory : ddsi_tran_factory_t)
      return ddsi_locator_from_string_result with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_locator_from_string";

   function ddsi_locator_from_sockaddr
     (tran         : access constant ddsi_tran_factory;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      the_sockaddr : access constant CycloneDDS.Low_Level.bits_socket_h
        .sockaddr)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_locator_from_sockaddr";

      --  8 for transport/
      --    1 for [
      --   48 for IPv6 hex digits (3*16) + separators
      --    2 for ]:
      --   10 for port (DDSI loc has signed 32-bit)
      --   11 for @ifindex
      --    1 for terminator
      --   --
      --   81
      --

   function ddsi_xlocator_to_string
     (dst : Interfaces.C.Strings.chars_ptr; sizeof_dst : unsigned_long;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_xlocator_t)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xlocator_to_string";

   function ddsi_locator_to_string
     (dst : Interfaces.C.Strings.chars_ptr; sizeof_dst : unsigned_long;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_locator_to_string";

   function ddsi_xlocator_to_string_no_port
     (dst : Interfaces.C.Strings.chars_ptr; sizeof_dst : unsigned_long;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_xlocator_t)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xlocator_to_string_no_port";

   function ddsi_locator_to_string_no_port
     (dst : Interfaces.C.Strings.chars_ptr; sizeof_dst : unsigned_long;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_locator_to_string_no_port";

   function ddsi_enumerate_interfaces
     (factory            : ddsi_tran_factory_t;
      transport_selector : CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_transport_selector;
      interfs : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_enumerate_interfaces";

   function ddsi_listener_locator
     (listener : ddsi_tran_listener_t;
      loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_listener_locator";

   function ddsi_listener_listen
     (listener : ddsi_tran_listener_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_listener_listen";

   function ddsi_listener_accept
     (listener : ddsi_tran_listener_t) return ddsi_tran_conn_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_listener_accept";

   procedure ddsi_listener_unblock (listener : ddsi_tran_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_listener_unblock";

   procedure ddsi_listener_free (listener : ddsi_tran_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_listener_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
