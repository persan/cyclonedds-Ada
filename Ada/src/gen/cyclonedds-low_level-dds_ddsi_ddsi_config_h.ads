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
   DDSI_PARTICIPANT_INDEX_AUTO : constant := -1;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:75
   DDSI_PARTICIPANT_INDEX_NONE : constant := -2;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:76

   DDSI_AMC_FALSE : constant := 0;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:162
   DDSI_AMC_SPDP : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:163
   DDSI_AMC_ASM : constant := 2;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:164

   DDSI_AMC_SSM : constant := 4;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:166
   --  unsupported macro: DDSI_AMC_TRUE (DDSI_AMC_SPDP | DDSI_AMC_ASM | DDSI_AMC_SSM)

   DDSI_AMC_DEFAULT : constant := 16#80000000#;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:171

   DDSI_XCHECK_WHC : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:234
   DDSI_XCHECK_RHC : constant := 2;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:235
   DDSI_XCHECK_XEV : constant := 4;  --  /usr/gnat/include/dds/ddsi/ddsi_config.h:236

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
   procedure ddsi_config_init_default (cfg : access ddsi_config)  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_config_init_default";

   type ddsi_standards_conformance is 
     (DDSI_SC_PEDANTIC,
      DDSI_SC_STRICT,
      DDSI_SC_LAX)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:36

   type ddsi_besmode is 
     (DDSI_BESMODE_FULL,
      DDSI_BESMODE_WRITERS,
      DDSI_BESMODE_MINIMAL)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:45

   type ddsi_retransmit_merging is 
     (DDSI_REXMIT_MERGE_NEVER,
      DDSI_REXMIT_MERGE_ADAPTIVE,
      DDSI_REXMIT_MERGE_ALWAYS)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:51

   type ddsi_boolean_default is 
     (DDSI_BOOLDEF_DEFAULT,
      DDSI_BOOLDEF_FALSE,
      DDSI_BOOLDEF_TRUE)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:57

  -- ddsi_config_listelem must be an overlay for all used listelem types  
   type ddsi_config_listelem;
   type ddsi_config_listelem is record
      next : access ddsi_config_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:79

   type networkpartition_address;
   type networkpartition_address is record
      next : access networkpartition_address;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:85
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:86
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:84

   type ddsi_config_networkpartition_listelem;
   type ddsi_config_networkpartition_listelem is record
      next : access ddsi_config_networkpartition_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:90
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:91
      address_string : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:92
      uc_addresses : access networkpartition_address;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:93
      asm_addresses : access networkpartition_address;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:94
      ssm_addresses : access networkpartition_address;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:89

   type ddsi_config_ignoredpartition_listelem;
   type ddsi_config_ignoredpartition_listelem is record
      next : access ddsi_config_ignoredpartition_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:101
      DCPSPartitionTopic : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:100

   type ddsi_config_partitionmapping_listelem;
   type ddsi_config_partitionmapping_listelem is record
      next : access ddsi_config_partitionmapping_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:106
      networkPartition : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:107
      DCPSPartitionTopic : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:108
      partition : access ddsi_config_networkpartition_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:109
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:105

  -- keeping an handle to the running thread for this channel  
  -- The handle of teh delivery queue servicing incoming data for this channel 
  -- The handle of the event queue servicing this channel 
  -- the index of the networkqueue serviced by this channel 
  -- the connection used for sending data out via this channel  
   type ddsi_config_maybe_int32 is record
      isdefault : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:133
      value : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:134
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:132

   type ddsi_config_maybe_uint32 is record
      isdefault : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:138
      value : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:139
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:137

   type ddsi_config_thread_properties_listelem;
   type ddsi_config_thread_properties_listelem is record
      next : access ddsi_config_thread_properties_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:143
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:144
      sched_class : aliased CycloneDDS.Low_Level.dds_ddsrt_sched_h.ddsrt_sched_t;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:145
      schedule_priority : aliased ddsi_config_maybe_int32;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:146
      stack_size : aliased ddsi_config_maybe_uint32;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:147
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:142

   type ddsi_config_peer_listelem;
   type ddsi_config_peer_listelem is record
      next : access ddsi_config_peer_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:152
      peer : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:153
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:150

   type ddsi_config_prune_deleted_ppant is record
      c_delay : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:157
      enforce_delay : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:158
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:156

  -- allow multicast bits (default depends on network type):  
  -- FIXME: this should be fully dynamic ... but this is easier for a quick hack  
   type ddsi_transport_selector is 
     (DDSI_TRANS_DEFAULT,
      DDSI_TRANS_UDP,
      DDSI_TRANS_UDP6,
      DDSI_TRANS_TCP,
      DDSI_TRANS_TCP6,
      DDSI_TRANS_RAWETH)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:174

  -- actually UDP, but this is so we can tell what has been set  
   type ddsi_many_sockets_mode is 
     (DDSI_MSM_NO_UNICAST,
      DDSI_MSM_SINGLE_UNICAST,
      DDSI_MSM_MANY_UNICAST)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:183

   type ddsi_plugin_library_properties is record
      library_path : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:191
      library_init : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:192
      library_finalize : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:193
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:190

   type ddsi_authentication_properties is record
      identity_certificate : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:197
      identity_ca : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:198
      private_key : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:199
      password : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:200
      trusted_ca_dir : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:201
      crl : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:202
      include_optional_fields : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:203
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:196

   type ddsi_access_control_properties is record
      permissions : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:207
      permissions_ca : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:208
      governance : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:209
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:206

   type ddsi_config_omg_security is record
      authentication_properties : aliased ddsi_authentication_properties;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:213
      access_control_properties : aliased ddsi_access_control_properties;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:214
      authentication_plugin : aliased ddsi_plugin_library_properties;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:215
      access_control_plugin : aliased ddsi_plugin_library_properties;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:216
      cryptography_plugin : aliased ddsi_plugin_library_properties;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:217
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:212

   type ddsi_config_omg_security_listelem;
   type ddsi_config_omg_security_listelem is record
      next : access ddsi_config_omg_security_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:221
      cfg : aliased ddsi_config_omg_security;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:222
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:220

   type ddsi_config_ssl_min_version is record
      major : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:228
      minor : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:229
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:227

  -- Expensive checks (compiled in when NDEBUG not defined, enabled only if flag set in xchecks)  
   type ddsi_config is record
      valid : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:240
      tracemask : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:241
      enabled_xchecks : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:242
      pcap_file : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:243
      networkAddressString : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:245
      networkRecvAddressStrings : System.Address;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:246
      externalAddressString : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:247
      externalMaskString : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:248
      tracefp : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:249
      tracefile : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:250
      tracingAppendToFile : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:251
      allowMulticast : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:252
      prefer_multicast : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:253
      transport_selector : aliased ddsi_transport_selector;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:254
      compat_use_ipv6 : aliased ddsi_boolean_default;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:255
      compat_tcp_enable : aliased ddsi_boolean_default;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:256
      dontRoute : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:257
      enableMulticastLoopback : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:258
      domainId : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:259
      extDomainId : aliased ddsi_config_maybe_uint32;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:260
      domainTag : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:261
      participantIndex : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:262
      maxAutoParticipantIndex : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:263
      spdpMulticastAddressString : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:264
      defaultMulticastAddressString : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:265
      assumeMulticastCapable : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:266
      spdp_interval : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:267
      spdp_response_delay_max : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:268
      lease_duration : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:269
      const_hb_intv_sched : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:270
      const_hb_intv_sched_min : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:271
      const_hb_intv_sched_max : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:272
      const_hb_intv_min : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:273
      retransmit_merging : aliased ddsi_retransmit_merging;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:274
      retransmit_merging_period : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:275
      squash_participants : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:276
      liveliness_monitoring : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:277
      noprogress_log_stacktraces : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:278
      liveliness_monitoring_interval : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:279
      prioritize_retransmit : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:280
      multiple_recv_threads : aliased ddsi_boolean_default;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:281
      recv_thread_stop_maxretries : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:282
      primary_reorder_maxsamples : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:284
      secondary_reorder_maxsamples : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:285
      delivery_queue_maxsamples : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:287
      fragment_size : aliased unsigned_short;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:289
      max_msg_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:290
      max_rexmit_msg_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:291
      init_transmit_extra_pct : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:292
      max_rexmit_burst_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:293
      publish_uc_locators : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:295
      enable_uc_locators : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:296
      tcp_nodelay : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:303
      tcp_port : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:304
      tcp_read_timeout : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:305
      tcp_write_timeout : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:306
      tcp_use_peeraddr_for_unicast : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:307
      ssl_enable : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:311
      ssl_verify : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:312
      ssl_verify_client : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:313
      ssl_self_signed : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:314
      ssl_keystore : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:315
      ssl_rand_file : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:316
      ssl_key_pass : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:317
      ssl_ciphers : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:318
      ssl_min_version : aliased ddsi_config_ssl_min_version;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:319
      networkPartitions : access ddsi_config_networkpartition_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:327
      nof_networkPartitions : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:328
      ignoredPartitions : access ddsi_config_ignoredpartition_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:329
      partitionMappings : access ddsi_config_partitionmapping_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:330
      peers : access ddsi_config_peer_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:332
      peers_group : access ddsi_config_peer_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:333
      thread_properties : access ddsi_config_thread_properties_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:334
      xmit_lossiness : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:337
      rmsg_chunk_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:338
      rbuf_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:339
      besmode : aliased ddsi_besmode;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:340
      meas_hb_to_ack_latency : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:341
      unicast_response_to_spdp_messages : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:342
      synchronous_delivery_priority_threshold : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:343
      synchronous_delivery_latency_bound : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:344
      whc_batch : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:348
      whc_lowwater_mark : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:349
      whc_highwater_mark : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:350
      whc_init_highwater_mark : aliased ddsi_config_maybe_uint32;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:351
      whc_adaptive : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:352
      defrag_unreliable_maxsamples : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:354
      defrag_reliable_maxsamples : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:355
      accelerate_rexmit_block_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:356
      responsiveness_timeout : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:357
      max_participants : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:358
      writer_linger_duration : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:359
      multicast_ttl : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:360
      socket_min_rcvbuf_size : aliased ddsi_config_maybe_uint32;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:361
      socket_min_sndbuf_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:362
      ack_delay : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:363
      nack_delay : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:364
      preemptive_ack_delay : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:365
      schedule_time_rounding : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:366
      auto_resched_nack_delay : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:367
      ds_grace_period : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:368
      max_queued_rexmit_bytes : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:372
      max_queued_rexmit_msgs : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:373
      ddsi2direct_max_threads : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:374
      late_ack_mode : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:375
      retry_on_reject_besteffort : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:376
      generate_keyhash : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:377
      max_sample_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:378
      standards_conformance : aliased ddsi_standards_conformance;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:381
      explicitly_publish_qos_set_to_default : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:382
      many_sockets_mode : aliased ddsi_many_sockets_mode;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:383
      assume_rti_has_pmd_endpoints : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:384
      ports : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h.ddsi_portmapping;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:386
      monitor_port : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:388
      enable_control_topic : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:390
      initial_deaf : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:391
      initial_mute : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:392
      initial_deaf_mute_reset : aliased long;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:393
      use_multicast_if_mreqn : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:395
      prune_deleted_ppant : aliased ddsi_config_prune_deleted_ppant;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:396
      redundant_networking : aliased int;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:397
      omg_security_configuration : access ddsi_config_omg_security_listelem;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:400
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_config.h:238

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
