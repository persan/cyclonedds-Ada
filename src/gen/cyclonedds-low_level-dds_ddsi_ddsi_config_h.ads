pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.dds_ddsrt_sched_h;
with System;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h is

   --  arg-macro: function DDSI_SC_PEDANTIC_P (config)
   --    return (config).standards_conformance <= DDSI_SC_PEDANTIC;
   --  arg-macro: function DDSI_SC_STRICT_P (config)
   --    return (config).standards_conformance <= DDSI_SC_STRICT;
   DDSI_PARTICIPANT_INDEX_AUTO : constant :=
     -1;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:75
   DDSI_PARTICIPANT_INDEX_NONE : constant :=
     -2;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:76

   DDSI_AMC_FALSE : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:162
   DDSI_AMC_SPDP : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:163
   DDSI_AMC_ASM : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:164

   DDSI_AMC_SSM : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:166
   --  unsupported macro: DDSI_AMC_TRUE (DDSI_AMC_SPDP | DDSI_AMC_ASM | DDSI_AMC_SSM)

   DDSI_AMC_DEFAULT : constant :=
     16#8000_0000#;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:171

   DDSI_XCHECK_WHC : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:234
   DDSI_XCHECK_RHC : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:235
   DDSI_XCHECK_XEV : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:236

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

   --*
   -- * @brief Default-initialize a configuration (unstable)
   -- *
   -- * @param[out]  cfg The configuration struct to be initialized.
   --

   type ddsi_config;
   procedure ddsi_config_init_default (cfg : access ddsi_config) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_config_init_default";

   type ddsi_standards_conformance is
     (DDSI_SC_PEDANTIC, DDSI_SC_STRICT, DDSI_SC_LAX) with
      Convention => C;

   type ddsi_besmode is
     (DDSI_BESMODE_FULL, DDSI_BESMODE_WRITERS, DDSI_BESMODE_MINIMAL) with
      Convention => C;

   type ddsi_retransmit_merging is
     (DDSI_REXMIT_MERGE_NEVER, DDSI_REXMIT_MERGE_ADAPTIVE,
      DDSI_REXMIT_MERGE_ALWAYS) with
      Convention => C;

   type ddsi_boolean_default is
     (DDSI_BOOLDEF_DEFAULT, DDSI_BOOLDEF_FALSE, DDSI_BOOLDEF_TRUE) with
      Convention => C;

      -- ddsi_config_listelem must be an overlay for all used listelem types
   type ddsi_config_listelem;
   type ddsi_config_listelem is record
      next : access ddsi_config_listelem;
   end record with
      Convention => C_Pass_By_Copy;

   type networkpartition_address;
   type networkpartition_address is record
      next : access networkpartition_address;
      loc  : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_networkpartition_listelem;
   type ddsi_config_networkpartition_listelem is record
      next           : access ddsi_config_networkpartition_listelem;
      name           : Interfaces.C.Strings.chars_ptr;
      address_string : Interfaces.C.Strings.chars_ptr;
      uc_addresses   : access networkpartition_address;
      asm_addresses  : access networkpartition_address;
      ssm_addresses  : access networkpartition_address;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_ignoredpartition_listelem;
   type ddsi_config_ignoredpartition_listelem is record
      next               : access ddsi_config_ignoredpartition_listelem;
      DCPSPartitionTopic : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_partitionmapping_listelem;
   type ddsi_config_partitionmapping_listelem is record
      next               : access ddsi_config_partitionmapping_listelem;
      networkPartition   : Interfaces.C.Strings.chars_ptr;
      DCPSPartitionTopic : Interfaces.C.Strings.chars_ptr;
      partition          : access ddsi_config_networkpartition_listelem;
   end record with
      Convention => C_Pass_By_Copy;

   -- keeping an handle to the running thread for this channel
   -- The handle of teh delivery queue servicing incoming data for this channel
   -- The handle of the event queue servicing this channel
   -- the index of the networkqueue serviced by this channel
   -- the connection used for sending data out via this channel
   type ddsi_config_maybe_int32 is record
      isdefault : aliased int;
      value     : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_maybe_uint32 is record
      isdefault : aliased int;
      value     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_thread_properties_listelem;
   type ddsi_config_thread_properties_listelem is record
      next        : access ddsi_config_thread_properties_listelem;
      name        : Interfaces.C.Strings.chars_ptr;
      sched_class : aliased CycloneDDS.Low_Level.dds_ddsrt_sched_h
        .ddsrt_sched_t;
      schedule_priority : aliased ddsi_config_maybe_int32;
      stack_size        : aliased ddsi_config_maybe_uint32;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_peer_listelem;
   type ddsi_config_peer_listelem is record
      next : access ddsi_config_peer_listelem;
      peer : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_prune_deleted_ppant is record
      c_delay       : aliased long;
      enforce_delay : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

-- allow multicast bits (default depends on network type):
-- FIXME: this should be fully dynamic ... but this is easier for a quick hack
   type ddsi_transport_selector is
     (DDSI_TRANS_DEFAULT, DDSI_TRANS_UDP, DDSI_TRANS_UDP6, DDSI_TRANS_TCP,
      DDSI_TRANS_TCP6, DDSI_TRANS_RAWETH) with
      Convention => C;

      -- actually UDP, but this is so we can tell what has been set
   type ddsi_many_sockets_mode is
     (DDSI_MSM_NO_UNICAST, DDSI_MSM_SINGLE_UNICAST, DDSI_MSM_MANY_UNICAST) with
      Convention => C;

   type ddsi_plugin_library_properties is record
      library_path     : Interfaces.C.Strings.chars_ptr;
      library_init     : Interfaces.C.Strings.chars_ptr;
      library_finalize : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_authentication_properties is record
      identity_certificate    : Interfaces.C.Strings.chars_ptr;
      identity_ca             : Interfaces.C.Strings.chars_ptr;
      private_key             : Interfaces.C.Strings.chars_ptr;
      password                : Interfaces.C.Strings.chars_ptr;
      trusted_ca_dir          : Interfaces.C.Strings.chars_ptr;
      crl                     : Interfaces.C.Strings.chars_ptr;
      include_optional_fields : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_access_control_properties is record
      permissions    : Interfaces.C.Strings.chars_ptr;
      permissions_ca : Interfaces.C.Strings.chars_ptr;
      governance     : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_omg_security is record
      authentication_properties : aliased ddsi_authentication_properties;
      access_control_properties : aliased ddsi_access_control_properties;
      authentication_plugin     : aliased ddsi_plugin_library_properties;
      access_control_plugin     : aliased ddsi_plugin_library_properties;
      cryptography_plugin       : aliased ddsi_plugin_library_properties;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_omg_security_listelem;
   type ddsi_config_omg_security_listelem is record
      next : access ddsi_config_omg_security_listelem;
      cfg  : aliased ddsi_config_omg_security;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_config_ssl_min_version is record
      major : aliased int;
      minor : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      -- Expensive checks (compiled in when NDEBUG not defined, enabled only if flag set in xchecks)
   type ddsi_config is record
      valid                                   : aliased int;
      tracemask                               : aliased unsigned;
      enabled_xchecks                         : aliased unsigned;
      pcap_file                               : Interfaces.C.Strings.chars_ptr;
      networkAddressString                    : Interfaces.C.Strings.chars_ptr;
      networkRecvAddressStrings               : System.Address;
      externalAddressString                   : Interfaces.C.Strings.chars_ptr;
      externalMaskString                      : Interfaces.C.Strings.chars_ptr;
      tracefp : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE;
      tracefile                               : Interfaces.C.Strings.chars_ptr;
      tracingAppendToFile                     : aliased int;
      allowMulticast                          : aliased unsigned;
      prefer_multicast                        : aliased int;
      transport_selector : aliased ddsi_transport_selector;
      compat_use_ipv6                         : aliased ddsi_boolean_default;
      compat_tcp_enable                       : aliased ddsi_boolean_default;
      dontRoute                               : aliased int;
      enableMulticastLoopback                 : aliased int;
      domainId                                : aliased unsigned;
      extDomainId : aliased ddsi_config_maybe_uint32;
      domainTag                               : Interfaces.C.Strings.chars_ptr;
      participantIndex                        : aliased int;
      maxAutoParticipantIndex                 : aliased int;
      spdpMulticastAddressString              : Interfaces.C.Strings.chars_ptr;
      defaultMulticastAddressString           : Interfaces.C.Strings.chars_ptr;
      assumeMulticastCapable                  : Interfaces.C.Strings.chars_ptr;
      spdp_interval                           : aliased long;
      spdp_response_delay_max                 : aliased long;
      lease_duration                          : aliased long;
      const_hb_intv_sched                     : aliased long;
      const_hb_intv_sched_min                 : aliased long;
      const_hb_intv_sched_max                 : aliased long;
      const_hb_intv_min                       : aliased long;
      retransmit_merging : aliased ddsi_retransmit_merging;
      retransmit_merging_period               : aliased long;
      squash_participants                     : aliased int;
      liveliness_monitoring                   : aliased int;
      noprogress_log_stacktraces              : aliased int;
      liveliness_monitoring_interval          : aliased long;
      prioritize_retransmit                   : aliased int;
      multiple_recv_threads                   : aliased ddsi_boolean_default;
      recv_thread_stop_maxretries             : aliased unsigned;
      primary_reorder_maxsamples              : aliased unsigned;
      secondary_reorder_maxsamples            : aliased unsigned;
      delivery_queue_maxsamples               : aliased unsigned;
      fragment_size                           : aliased unsigned_short;
      max_msg_size                            : aliased unsigned;
      max_rexmit_msg_size                     : aliased unsigned;
      init_transmit_extra_pct                 : aliased unsigned;
      max_rexmit_burst_size                   : aliased unsigned;
      publish_uc_locators                     : aliased int;
      enable_uc_locators                      : aliased int;
      tcp_nodelay                             : aliased int;
      tcp_port                                : aliased int;
      tcp_read_timeout                        : aliased long;
      tcp_write_timeout                       : aliased long;
      tcp_use_peeraddr_for_unicast            : aliased int;
      ssl_enable                              : aliased int;
      ssl_verify                              : aliased int;
      ssl_verify_client                       : aliased int;
      ssl_self_signed                         : aliased int;
      ssl_keystore                            : Interfaces.C.Strings.chars_ptr;
      ssl_rand_file                           : Interfaces.C.Strings.chars_ptr;
      ssl_key_pass                            : Interfaces.C.Strings.chars_ptr;
      ssl_ciphers                             : Interfaces.C.Strings.chars_ptr;
      ssl_min_version : aliased ddsi_config_ssl_min_version;
      networkPartitions : access ddsi_config_networkpartition_listelem;
      nof_networkPartitions                   : aliased unsigned;
      ignoredPartitions : access ddsi_config_ignoredpartition_listelem;
      partitionMappings : access ddsi_config_partitionmapping_listelem;
      peers : access ddsi_config_peer_listelem;
      peers_group : access ddsi_config_peer_listelem;
      thread_properties : access ddsi_config_thread_properties_listelem;
      xmit_lossiness                          : aliased int;
      rmsg_chunk_size                         : aliased unsigned;
      rbuf_size                               : aliased unsigned;
      besmode                                 : aliased ddsi_besmode;
      meas_hb_to_ack_latency                  : aliased int;
      unicast_response_to_spdp_messages       : aliased int;
      synchronous_delivery_priority_threshold : aliased int;
      synchronous_delivery_latency_bound      : aliased long;
      whc_batch                               : aliased int;
      whc_lowwater_mark                       : aliased unsigned;
      whc_highwater_mark                      : aliased unsigned;
      whc_init_highwater_mark : aliased ddsi_config_maybe_uint32;
      whc_adaptive                            : aliased int;
      defrag_unreliable_maxsamples            : aliased unsigned;
      defrag_reliable_maxsamples              : aliased unsigned;
      accelerate_rexmit_block_size            : aliased unsigned;
      responsiveness_timeout                  : aliased long;
      max_participants                        : aliased unsigned;
      writer_linger_duration                  : aliased long;
      multicast_ttl                           : aliased int;
      socket_min_rcvbuf_size : aliased ddsi_config_maybe_uint32;
      socket_min_sndbuf_size                  : aliased unsigned;
      ack_delay                               : aliased long;
      nack_delay                              : aliased long;
      preemptive_ack_delay                    : aliased long;
      schedule_time_rounding                  : aliased long;
      auto_resched_nack_delay                 : aliased long;
      ds_grace_period                         : aliased long;
      max_queued_rexmit_bytes                 : aliased unsigned;
      max_queued_rexmit_msgs                  : aliased unsigned;
      ddsi2direct_max_threads                 : aliased unsigned;
      late_ack_mode                           : aliased int;
      retry_on_reject_besteffort              : aliased int;
      generate_keyhash                        : aliased int;
      max_sample_size                         : aliased unsigned;
      standards_conformance : aliased ddsi_standards_conformance;
      explicitly_publish_qos_set_to_default   : aliased int;
      many_sockets_mode                       : aliased ddsi_many_sockets_mode;
      assume_rti_has_pmd_endpoints            : aliased int;
      ports : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h
        .ddsi_portmapping;
      monitor_port               : aliased int;
      enable_control_topic       : aliased int;
      initial_deaf               : aliased int;
      initial_mute               : aliased int;
      initial_deaf_mute_reset    : aliased long;
      use_multicast_if_mreqn     : aliased int;
      prune_deleted_ppant        : aliased ddsi_config_prune_deleted_ppant;
      redundant_networking       : aliased int;
      omg_security_configuration : access ddsi_config_omg_security_listelem;
   end record with
      Convention => C_Pass_By_Copy;

      -- domain id advertised in discovery
      -- Publish discovery unicast locators
      -- If false, don't even try to create a unicast socket
      -- TCP transport configuration
      -- SSL support for TCP
      -- channel with highest prio; always computed
      -- debug/test/undoc features:
      --*<< fraction of packets to drop on xmit, in units of 1e-3
      --*<< size of a chunk in the receive buffer
      -- << size of a single receiver buffer
      -- Write cache
      -- bytes/second
      -- compability options
end CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;
