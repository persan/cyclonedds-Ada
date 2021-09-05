pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h;

package CycloneDDS.Low_Level.dds_ddsi_q_protocol_h is

   NN_SEQUENCE_NUMBER_UNKNOWN_HIGH : constant :=
     -1;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:34
   NN_SEQUENCE_NUMBER_UNKNOWN_LOW : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:35
   --  unsupported macro: NN_SEQUENCE_NUMBER_UNKNOWN ((seqno_t) (((uint64_t)NN_SEQUENCE_NUMBER_UNKNOWN_HIGH << 32) | NN_SEQUENCE_NUMBER_UNKNOWN_LOW))

   NN_SEQUENCE_NUMBER_SET_MAX_BITS : constant :=
     (256);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:46
   --  arg-macro: function NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits)
   --    return (unsigned) (4 * (((numbits) + 31) / 32));
   --  arg-macro: function NN_SEQUENCE_NUMBER_SET_SIZE (numbits)
   --    return sizeof (nn_sequence_number_set_header_t) + NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits);

   NN_FRAGMENT_NUMBER_SET_MAX_BITS : constant :=
     (256);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:56
   --  arg-macro: function NN_FRAGMENT_NUMBER_SET_BITS_SIZE (numbits)
   --    return (unsigned) (4 * (((numbits) + 31) / 32));
   --  arg-macro: function NN_FRAGMENT_NUMBER_SET_SIZE (numbits)
   --    return sizeof (nn_fragment_number_set_header_t) + NN_FRAGMENT_NUMBER_SET_BITS_SIZE (numbits);

   NN_STATUSINFO_DISPOSE : constant :=
     16#1#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:61
   NN_STATUSINFO_UNREGISTER : constant :=
     16#2#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:62
   --  unsupported macro: NN_STATUSINFO_STANDARDIZED (NN_STATUSINFO_DISPOSE | NN_STATUSINFO_UNREGISTER)

   NN_STATUSINFO_OSPL_AUTO : constant :=
     16#1000_0000#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:64
   NN_STATUSINFOX_OSPL_AUTO : constant :=
     16#1#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:65
   --  unsupported macro: NN_GUID_PREFIX_UNKNOWN_INITIALIZER {{0,0,0,0, 0,0,0,0, 0,0,0,0}}

   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_ANNOUNCER : constant :=
     (2**0);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:69
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_DETECTOR : constant :=
     (2**1);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:70
   NN_DISC_BUILTIN_ENDPOINT_PUBLICATION_ANNOUNCER : constant :=
     (2**2);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:71
   NN_DISC_BUILTIN_ENDPOINT_PUBLICATION_DETECTOR : constant :=
     (2**3);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:72
   NN_DISC_BUILTIN_ENDPOINT_SUBSCRIPTION_ANNOUNCER : constant :=
     (2**4);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:73
   NN_DISC_BUILTIN_ENDPOINT_SUBSCRIPTION_DETECTOR : constant :=
     (2**5);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:74
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_PROXY_ANNOUNCER : constant :=
     (2**6);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:75
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_PROXY_DETECTOR : constant :=
     (2**7);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:76
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_STATE_ANNOUNCER : constant :=
     (2**8);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:77
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_STATE_DETECTOR : constant :=
     (2**9);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:78
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_DATA_WRITER : constant :=
     (2**10);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:79
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_DATA_READER : constant :=
     (2**11);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:80
   NN_BUILTIN_ENDPOINT_TL_SVC_REQUEST_DATA_WRITER : constant :=
     (2**12);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:81
   NN_BUILTIN_ENDPOINT_TL_SVC_REQUEST_DATA_READER : constant :=
     (2**13);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:82
   NN_BUILTIN_ENDPOINT_TL_SVC_REPLY_DATA_WRITER : constant :=
     (2**14);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:83
   NN_BUILTIN_ENDPOINT_TL_SVC_REPLY_DATA_READER : constant :=
     (2**15);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:84
   NN_DISC_BUILTIN_ENDPOINT_TOPICS_ANNOUNCER : constant :=
     (2**28);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:85
   NN_DISC_BUILTIN_ENDPOINT_TOPICS_DETECTOR : constant :=
     (2**29);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:86

   NN_BUILTIN_ENDPOINT_PUBLICATION_MESSAGE_SECURE_ANNOUNCER : constant :=
     (2**16);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:89
   NN_BUILTIN_ENDPOINT_PUBLICATION_MESSAGE_SECURE_DETECTOR : constant :=
     (2**17);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:90
   NN_BUILTIN_ENDPOINT_SUBSCRIPTION_MESSAGE_SECURE_ANNOUNCER : constant :=
     (2**18);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:91
   NN_BUILTIN_ENDPOINT_SUBSCRIPTION_MESSAGE_SECURE_DETECTOR : constant :=
     (2**19);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:92
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_SECURE_ANNOUNCER : constant :=
     (2**20);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:93
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_SECURE_DETECTOR : constant :=
     (2**21);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:94
   NN_BUILTIN_ENDPOINT_PARTICIPANT_STATELESS_MESSAGE_ANNOUNCER : constant :=
     (2**22);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:95
   NN_BUILTIN_ENDPOINT_PARTICIPANT_STATELESS_MESSAGE_DETECTOR : constant :=
     (2**23);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:96
   NN_BUILTIN_ENDPOINT_PARTICIPANT_VOLATILE_SECURE_ANNOUNCER : constant :=
     (2**24);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:97
   NN_BUILTIN_ENDPOINT_PARTICIPANT_VOLATILE_SECURE_DETECTOR : constant :=
     (2**25);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:98
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_SECURE_ANNOUNCER : constant :=
     (2**26);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:99
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_SECURE_DETECTOR : constant :=
     (2**27);  --  /usr/gnat/include/dds/ddsi/q_protocol.h:100

   NN_BES_MASK_NON_SECURITY : constant :=
     16#f000_ffff#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:102

   NN_LOCATOR_KIND_INVALID : constant :=
     -1;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:104
   NN_LOCATOR_KIND_RESERVED : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:105
   NN_LOCATOR_KIND_UDPv4 : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:106
   NN_LOCATOR_KIND_UDPv6 : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:107
   NN_LOCATOR_KIND_TCPv4 : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:108
   NN_LOCATOR_KIND_TCPv6 : constant :=
     8;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:109
   NN_LOCATOR_KIND_SHEM : constant :=
     16;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:110
   NN_LOCATOR_KIND_RAWETH : constant :=
     16#8000#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:111
   NN_LOCATOR_KIND_UDPv4MCGEN : constant :=
     16#4fff_0000#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:112
   NN_LOCATOR_PORT_INVALID : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:113

   RTPS_MAJOR : constant := 2;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:116
   RTPS_MINOR : constant := 1;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:117
   RTPS_MINOR_MINIMUM : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:118
   --  unsupported macro: NN_PROTOCOLID_AS_UINT32 (((uint32_t)'R' << 0) | ((uint32_t)'T' << 8) | ((uint32_t)'P' << 16) | ((uint32_t)'S' << 24))
   --  unsupported macro: RTPS_MESSAGE_HEADER_SIZE (sizeof (Header_t))
   --  unsupported macro: RTPS_SUBMESSAGE_HEADER_SIZE (sizeof (SubmessageHeader_t))

   SMFLAG_ENDIANNESS : constant :=
     16#01#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:141

   PL_CDR_BE : constant :=
     16#0200#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:192
   PL_CDR_LE : constant :=
     16#0300#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:193

   DATA_FLAG_INLINE_QOS : constant :=
     16#02#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:218
   DATA_FLAG_DATAFLAG : constant :=
     16#04#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:219
   DATA_FLAG_KEYFLAG : constant :=
     16#08#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:220

   DATAFRAG_FLAG_INLINE_QOS : constant :=
     16#02#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:229
   DATAFRAG_FLAG_KEYFLAG : constant :=
     16#04#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:230

   ACKNACK_FLAG_FINAL : constant :=
     16#02#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:247
   --  arg-macro: function ACKNACK_SIZE (numbits)
   --    return offsetof (AckNack_t, bits) + NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits) + 4;
   --  unsupported macro: ACKNACK_SIZE_MAX ACKNACK_SIZE (NN_SEQUENCE_NUMBER_SET_MAX_BITS)
   --  arg-macro: function GAP_SIZE (numbits)
   --    return offsetof (Gap_t, bits) + NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits);
--  unsupported macro: GAP_SIZE_MAX GAP_SIZE (NN_SEQUENCE_NUMBER_SET_MAX_BITS)

   INFOTS_INVALIDATE_FLAG : constant :=
     16#2#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:268

   HEARTBEAT_FLAG_FINAL : constant :=
     16#02#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:278
   HEARTBEAT_FLAG_LIVELINESS : constant :=
     16#04#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:279
   --  arg-macro: function NACKFRAG_SIZE (numbits)
   --    return offsetof (NackFrag_t, bits) + NN_FRAGMENT_NUMBER_SET_BITS_SIZE (numbits) + 4;
   --  unsupported macro: NACKFRAG_SIZE_MAX NACKFRAG_SIZE (NN_FRAGMENT_NUMBER_SET_MAX_BITS)

   PARTICIPANT_MESSAGE_DATA_KIND_UNKNOWN : constant :=
     16#0#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:318
   PARTICIPANT_MESSAGE_DATA_KIND_AUTOMATIC_LIVELINESS_UPDATE : constant :=
     16#1#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:319
   PARTICIPANT_MESSAGE_DATA_KIND_MANUAL_LIVELINESS_UPDATE : constant :=
     16#2#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:320
   PARTICIPANT_MESSAGE_DATA_VENDOR_SPECIFIC_KIND_FLAG : constant :=
     16#800_0000#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:321

   PID_VENDORSPECIFIC_FLAG : constant :=
     16#8000#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:323
   PID_UNRECOGNIZED_INCOMPATIBLE_FLAG : constant :=
     16#4000#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:324

   PID_PAD : constant :=
     16#0#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:326
   PID_SENTINEL : constant :=
     16#1#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:327
   PID_DOMAIN_ID : constant :=
     16#f#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:328
   --  unsupported macro: PID_DOMAIN_TAG (0x14u | PID_UNRECOGNIZED_INCOMPATIBLE_FLAG)

   PID_USER_DATA : constant :=
     16#2c#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:330
   PID_TOPIC_NAME : constant :=
     16#5#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:331
   PID_TYPE_NAME : constant :=
     16#7#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:332
   PID_GROUP_DATA : constant :=
     16#2d#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:333
   PID_TOPIC_DATA : constant :=
     16#2e#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:334
   PID_DURABILITY : constant :=
     16#1d#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:335
   PID_DURABILITY_SERVICE : constant :=
     16#1e#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:336
   PID_DEADLINE : constant :=
     16#23#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:337
   PID_LATENCY_BUDGET : constant :=
     16#27#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:338
   PID_LIVELINESS : constant :=
     16#1b#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:339
   PID_RELIABILITY : constant :=
     16#1a#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:340
   PID_LIFESPAN : constant :=
     16#2b#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:341
   PID_DESTINATION_ORDER : constant :=
     16#25#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:342
   PID_HISTORY : constant :=
     16#40#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:343
   PID_RESOURCE_LIMITS : constant :=
     16#41#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:344
   PID_OWNERSHIP : constant :=
     16#1f#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:345
   PID_OWNERSHIP_STRENGTH : constant :=
     16#6#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:346
   PID_PRESENTATION : constant :=
     16#21#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:347
   PID_PARTITION : constant :=
     16#29#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:348
   PID_TIME_BASED_FILTER : constant :=
     16#4#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:349
   PID_TRANSPORT_PRIORITY : constant :=
     16#49#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:350
   PID_PROTOCOL_VERSION : constant :=
     16#15#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:351
   PID_VENDORID : constant :=
     16#16#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:352
   PID_UNICAST_LOCATOR : constant :=
     16#2f#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:353
   PID_MULTICAST_LOCATOR : constant :=
     16#30#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:354
   PID_MULTICAST_IPADDRESS : constant :=
     16#11#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:355
   PID_DEFAULT_UNICAST_LOCATOR : constant :=
     16#31#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:356
   PID_DEFAULT_MULTICAST_LOCATOR : constant :=
     16#48#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:357
   PID_METATRAFFIC_UNICAST_LOCATOR : constant :=
     16#32#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:358
   PID_METATRAFFIC_MULTICAST_LOCATOR : constant :=
     16#33#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:359
   PID_DEFAULT_UNICAST_IPADDRESS : constant :=
     16#c#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:360
   PID_DEFAULT_UNICAST_PORT : constant :=
     16#e#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:361
   PID_METATRAFFIC_UNICAST_IPADDRESS : constant :=
     16#45#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:362
   PID_METATRAFFIC_UNICAST_PORT : constant :=
     16#d#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:363
   PID_METATRAFFIC_MULTICAST_IPADDRESS : constant :=
     16#b#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:364
   PID_METATRAFFIC_MULTICAST_PORT : constant :=
     16#46#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:365
   PID_EXPECTS_INLINE_QOS : constant :=
     16#43#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:366
   PID_PARTICIPANT_MANUAL_LIVELINESS_COUNT : constant :=
     16#34#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:367
   PID_PARTICIPANT_BUILTIN_ENDPOINTS : constant :=
     16#44#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:368
   PID_PARTICIPANT_LEASE_DURATION : constant :=
     16#2#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:369
   PID_CONTENT_FILTER_PROPERTY : constant :=
     16#35#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:370
   PID_PARTICIPANT_GUID : constant :=
     16#50#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:371
   PID_PARTICIPANT_ENTITYID : constant :=
     16#51#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:372
   PID_GROUP_GUID : constant :=
     16#52#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:373
   PID_GROUP_ENTITYID : constant :=
     16#53#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:374
   PID_BUILTIN_ENDPOINT_SET : constant :=
     16#58#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:375
   PID_PROPERTY_LIST : constant :=
     16#59#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:376
   PID_TYPE_MAX_SIZE_SERIALIZED : constant :=
     16#60#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:377
   PID_ENTITY_NAME : constant :=
     16#62#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:378
   PID_KEYHASH : constant :=
     16#70#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:379
   PID_STATUSINFO : constant :=
     16#71#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:380
   PID_CONTENT_FILTER_INFO : constant :=
     16#55#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:381
   PID_COHERENT_SET : constant :=
     16#56#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:382
   PID_DIRECTED_WRITE : constant :=
     16#57#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:383
   PID_ORIGINAL_WRITER_INFO : constant :=
     16#61#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:384
   PID_ENDPOINT_GUID : constant :=
     16#5a#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:385
   PID_TYPE_CONSISTENCY_ENFORCEMENT : constant :=
     16#74#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:386
   PID_TYPE_INFORMATION : constant :=
     16#75#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:387

   PID_IDENTITY_TOKEN : constant :=
     16#1001#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:390
   PID_PERMISSIONS_TOKEN : constant :=
     16#1002#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:391
   PID_DATA_TAGS : constant :=
     16#1003#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:392
   PID_ENDPOINT_SECURITY_INFO : constant :=
     16#1004#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:393
   PID_PARTICIPANT_SECURITY_INFO : constant :=
     16#1005#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:394
   PID_IDENTITY_STATUS_TOKEN : constant :=
     16#1006#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:395

   PID_READER_FAVOURS_SSM : constant :=
     16#72#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:400

   PID_PERSISTENCE : constant :=
     16#03#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:404
   PID_TYPE_CHECKSUM : constant :=
     16#08#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:405
   PID_TYPE2_NAME : constant :=
     16#09#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:406
   PID_TYPE2_CHECKSUM : constant :=
     16#0a#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:407
   PID_EXPECTS_ACK : constant :=
     16#10#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:408
   PID_MANAGER_KEY : constant :=
     16#12#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:409
   PID_SEND_QUEUE_SIZE : constant :=
     16#13#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:410
   PID_RELIABILITY_ENABLED : constant :=
     16#14#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:411
   PID_VARGAPPS_SEQUENCE_NUMBER_LAST : constant :=
     16#17#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:412
   PID_RECV_QUEUE_SIZE : constant :=
     16#18#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:413
   PID_RELIABILITY_OFFERED : constant :=
     16#19#;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:414
   --  unsupported macro: PID_ADLINK_BUILTIN_ENDPOINT_SET (PID_VENDORSPECIFIC_FLAG | 0x0u)
   --  unsupported macro: PID_ADLINK_READER_DATA_LIFECYCLE (PID_VENDORSPECIFIC_FLAG | 0x2u)
   --  unsupported macro: PID_ADLINK_WRITER_DATA_LIFECYCLE (PID_VENDORSPECIFIC_FLAG | 0x3u)
   --  unsupported macro: PID_ADLINK_ENDPOINT_GUID (PID_VENDORSPECIFIC_FLAG | 0x4u)
   --  unsupported macro: PID_ADLINK_SYNCHRONOUS_ENDPOINT (PID_VENDORSPECIFIC_FLAG | 0x5u)
   --  unsupported macro: PID_ADLINK_RELAXED_QOS_MATCHING (PID_VENDORSPECIFIC_FLAG | PID_UNRECOGNIZED_INCOMPATIBLE_FLAG | 0x6u)
   --  unsupported macro: PID_ADLINK_PARTICIPANT_VERSION_INFO (PID_VENDORSPECIFIC_FLAG | 0x7u)
   --  unsupported macro: PID_ADLINK_NODE_NAME (PID_VENDORSPECIFIC_FLAG | 0x8u)
   --  unsupported macro: PID_ADLINK_EXEC_NAME (PID_VENDORSPECIFIC_FLAG | 0x9u)
   --  unsupported macro: PID_ADLINK_PROCESS_ID (PID_VENDORSPECIFIC_FLAG | 0xau)
   --  unsupported macro: PID_ADLINK_SERVICE_TYPE (PID_VENDORSPECIFIC_FLAG | 0xbu)
   --  unsupported macro: PID_ADLINK_ENTITY_FACTORY (PID_VENDORSPECIFIC_FLAG | 0xcu)
   --  unsupported macro: PID_ADLINK_WATCHDOG_SCHEDULING (PID_VENDORSPECIFIC_FLAG | 0xdu)
   --  unsupported macro: PID_ADLINK_LISTENER_SCHEDULING (PID_VENDORSPECIFIC_FLAG | 0xeu)
   --  unsupported macro: PID_ADLINK_SUBSCRIPTION_KEYS (PID_VENDORSPECIFIC_FLAG | 0xfu)
   --  unsupported macro: PID_ADLINK_READER_LIFESPAN (PID_VENDORSPECIFIC_FLAG | 0x10u)
   --  unsupported macro: PID_ADLINK_TYPE_DESCRIPTION (PID_VENDORSPECIFIC_FLAG | 0x12u)
   --  unsupported macro: PID_ADLINK_LAN (PID_VENDORSPECIFIC_FLAG | 0x13u)
   --  unsupported macro: PID_ADLINK_ENDPOINT_GID (PID_VENDORSPECIFIC_FLAG | 0x14u)
   --  unsupported macro: PID_ADLINK_GROUP_GID (PID_VENDORSPECIFIC_FLAG | 0x15u)
   --  unsupported macro: PID_ADLINK_EOTINFO (PID_VENDORSPECIFIC_FLAG | 0x16u)
   --  unsupported macro: PID_ADLINK_PART_CERT_NAME (PID_VENDORSPECIFIC_FLAG | 0x17u)
   --  unsupported macro: PID_ADLINK_LAN_CERT_NAME (PID_VENDORSPECIFIC_FLAG | 0x18u)
   --  unsupported macro: PID_CYCLONE_RECEIVE_BUFFER_SIZE (PID_VENDORSPECIFIC_FLAG | 0x19u)
   --  unsupported macro: PID_CYCLONE_TYPE_INFORMATION (PID_VENDORSPECIFIC_FLAG | 0x1au)
   --  unsupported macro: PID_CYCLONE_TOPIC_GUID (PID_VENDORSPECIFIC_FLAG | 0x1bu)
   --  unsupported macro: PID_CYCLONE_REQUESTS_KEYHASH (PID_VENDORSPECIFIC_FLAG | 0x1cu)
   --  unsupported macro: PID_CYCLONE_REDUNDANT_NETWORKING (PID_VENDORSPECIFIC_FLAG | 0x1du)

   DDS_BUILTIN_TOPIC_PARTICIPANT_NAME : aliased constant String :=
     "DCPSParticipant" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:459
   DDS_BUILTIN_TOPIC_PUBLICATION_NAME : aliased constant String :=
     "DCPSPublication" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:460
   DDS_BUILTIN_TOPIC_SUBSCRIPTION_NAME : aliased constant String :=
     "DCPSSubscription" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:461
   DDS_BUILTIN_TOPIC_TOPIC_NAME : aliased constant String :=
     "DCPSTopic" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:462
   DDS_BUILTIN_TOPIC_PARTICIPANT_MESSAGE_NAME : aliased constant String :=
     "DCPSParticipantMessage" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:463
   DDS_BUILTIN_TOPIC_TYPELOOKUP_REQUEST_NAME : aliased constant String :=
     "DCPSTypeLookupRequest" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:464
   DDS_BUILTIN_TOPIC_TYPELOOKUP_REPLY_NAME : aliased constant String :=
     "DCPSTypeLookupReply" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:465
   DDS_BUILTIN_TOPIC_PARTICIPANT_SECURE_NAME : aliased constant String :=
     "DCPSParticipantsSecure" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:466
   DDS_BUILTIN_TOPIC_PUBLICATION_SECURE_NAME : aliased constant String :=
     "DCPSPublicationsSecure" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:467
   DDS_BUILTIN_TOPIC_SUBSCRIPTION_SECURE_NAME : aliased constant String :=
     "DCPSSubscriptionsSecure" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:468
   DDS_BUILTIN_TOPIC_PARTICIPANT_MESSAGE_SECURE_NAME : aliased constant String :=
     "DCPSParticipantMessageSecure" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:469
   DDS_BUILTIN_TOPIC_PARTICIPANT_STATELESS_MESSAGE_NAME : aliased constant String :=
     "DCPSParticipantStatelessMessage" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:470
   DDS_BUILTIN_TOPIC_PARTICIPANT_VOLATILE_MESSAGE_SECURE_NAME : aliased constant String :=
     "DCPSParticipantVolatileMessageSecure" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/q_protocol.h:471
   --  unsupported macro: DDS_BUILTIN_TOPIC_NULL_NAME NULL

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

   type nn_protocolid_t_array4568 is array (0 .. 3) of aliased unsigned_char;
   type nn_protocolid_t is record
      id : aliased nn_protocolid_t_array4568;
   end record with
      Convention => C_Pass_By_Copy;

   type nn_sequence_number_t is record
      high : aliased int;
      low  : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- C99 disallows flex array in nested struct, so only put the
      --   header in.  (GCC and Clang allow it, but there are other
      --   compilers in the world as well.)

   type nn_sequence_number_set_header_t is record
      bitmap_base : aliased nn_sequence_number_t;
      numbits     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype nn_sequence_number_set_header_t is nn_sequence_number_set_header;

      -- SequenceNumberSet size is base (2 words) + numbits (1 word) +
      --   bitmap ((numbits+31)/32 words), and this at 4 bytes/word

   subtype nn_fragment_number_t is unsigned;

   type nn_fragment_number_set_header_t is record
      bitmap_base : aliased nn_fragment_number_t;
      numbits     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype nn_fragment_number_set_header_t is nn_fragment_number_set_header;

      -- FragmentNumberSet size is base (2 words) + numbits (1 word) +
      --   bitmap ((numbits+31)/32 words), and this at 4 bytes/word

   subtype nn_count_t is unsigned;

   -- Security extensions:
   -- Only one specific version is grokked
   type Header_t is record
      protocol : aliased nn_protocolid_t;
      version  : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h
        .nn_protocol_version_t;
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h
        .nn_vendorid_t;
      guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype Header_t is Header;

   type SubmessageHeader_t is record
      submessageId       : aliased unsigned_char;
      flags              : aliased unsigned_char;
      octetsToNextHeader : aliased unsigned_short;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype SubmessageHeader_t is SubmessageHeader;

   subtype SubmessageKind is unsigned;
   SMID_PAD              : constant SubmessageKind := 1;
   SMID_ACKNACK          : constant SubmessageKind := 6;
   SMID_HEARTBEAT        : constant SubmessageKind := 7;
   SMID_GAP              : constant SubmessageKind := 8;
   SMID_INFO_TS          : constant SubmessageKind := 9;
   SMID_INFO_SRC         : constant SubmessageKind := 12;
   SMID_INFO_REPLY_IP4   : constant SubmessageKind := 13;
   SMID_INFO_DST         : constant SubmessageKind := 14;
   SMID_INFO_REPLY       : constant SubmessageKind := 15;
   SMID_NACK_FRAG        : constant SubmessageKind := 18;
   SMID_HEARTBEAT_FRAG   : constant SubmessageKind := 19;
   SMID_DATA             : constant SubmessageKind := 21;
   SMID_DATA_FRAG        : constant SubmessageKind := 22;
   SMID_SEC_BODY         : constant SubmessageKind := 48;
   SMID_SEC_PREFIX       : constant SubmessageKind := 49;
   SMID_SEC_POSTFIX      : constant SubmessageKind := 50;
   SMID_SRTPS_PREFIX     : constant SubmessageKind := 51;
   SMID_SRTPS_POSTFIX    : constant SubmessageKind := 52;
   SMID_ADLINK_MSG_LEN   : constant SubmessageKind := 129;
   SMID_ADLINK_ENTITY_ID : constant SubmessageKind := 130;

   -- security-specific sub messages
   -- vendor-specific sub messages (0x80 .. 0xff)
   subtype SubmessageKind_t is SubmessageKind;

   type InfoTimestamp_t is record
      smhdr : aliased SubmessageHeader_t;
      time  : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_time_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype InfoTimestamp_t is InfoTimestamp;

   type EntityId_t is record
      smhdr    : aliased SubmessageHeader_t;
      entityid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype EntityId_t is EntityId;

   type InfoDST_t is record
      smhdr       : aliased SubmessageHeader_t;
      guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype InfoDST_t is InfoDST;

   type InfoSRC_t is record
      smhdr   : aliased SubmessageHeader_t;
      unused  : aliased unsigned;
      version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h
        .nn_protocol_version_t;
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h
        .nn_vendorid_t;
      guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype InfoSRC_t is InfoSRC;

      -- spec says short
   subtype nn_parameterid_t is unsigned_short;

   type nn_parameter_t is record
      parameterid : aliased nn_parameterid_t;
      length      : aliased unsigned_short;
   end record with
      Convention => C_Pass_By_Copy;

      -- spec says signed short
      -- char value[]
      --  <>subtype nn_parameter_t is nn_parameter;

   type Data_DataFrag_common_t is record
      smhdr             : aliased SubmessageHeader_t;
      extraFlags        : aliased unsigned_short;
      octetsToInlineQos : aliased unsigned_short;
      readerId          : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerSN : aliased nn_sequence_number_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype Data_DataFrag_common_t is Data_DataFrag_common;

   type Data_t is record
      x : aliased Data_DataFrag_common_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype Data_t is Data;

   type DataFrag_t is record
      x                     : aliased Data_DataFrag_common_t;
      fragmentStartingNum   : aliased nn_fragment_number_t;
      fragmentsInSubmessage : aliased unsigned_short;
      fragmentSize          : aliased unsigned_short;
      sampleSize            : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype DataFrag_t is DataFrag;

   type MsgLen_t is record
      smhdr  : aliased SubmessageHeader_t;
      length : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype MsgLen_t is MsgLen;

   type anon4604_array4605 is array (0 .. 0) of aliased unsigned;
   type AckNack_t is record
      smhdr    : aliased SubmessageHeader_t;
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      readerSNState : aliased nn_sequence_number_set_header_t;
      bits          : aliased anon4604_array4605;
   end record with
      Convention => C_Pass_By_Copy;

      -- nn_count_t count;
      --  <>subtype AckNack_t is AckNack;

   type anon4608_array4605 is array (0 .. 0) of aliased unsigned;
   type Gap_t is record
      smhdr    : aliased SubmessageHeader_t;
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      gapStart : aliased nn_sequence_number_t;
      gapList  : aliased nn_sequence_number_set_header_t;
      bits     : aliased anon4608_array4605;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype Gap_t is Gap;

   type InfoTS_t is record
      smhdr : aliased SubmessageHeader_t;
      time  : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_time_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype InfoTS_t is InfoTS;

   type Heartbeat_t is record
      smhdr    : aliased SubmessageHeader_t;
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      firstSN : aliased nn_sequence_number_t;
      lastSN  : aliased nn_sequence_number_t;
      count   : aliased nn_count_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype Heartbeat_t is Heartbeat;

   type HeartbeatFrag_t is record
      smhdr    : aliased SubmessageHeader_t;
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerSN        : aliased nn_sequence_number_t;
      lastFragmentNum : aliased nn_fragment_number_t;
      count           : aliased nn_count_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype HeartbeatFrag_t is HeartbeatFrag;

   type anon4616_array4605 is array (0 .. 0) of aliased unsigned;
   type NackFrag_t is record
      smhdr    : aliased SubmessageHeader_t;
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_entityid_t;
      writerSN            : aliased nn_sequence_number_t;
      fragmentNumberState : aliased nn_fragment_number_set_header_t;
      bits                : aliased anon4616_array4605;
   end record with
      Convention => C_Pass_By_Copy;

      -- nn_count_t count;
      --  <>subtype NackFrag_t is NackFrag;

   type Submessage (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            smhdr : aliased SubmessageHeader_t;
         when 1 =>
            acknack : aliased AckNack_t;
         when 2 =>
            data : aliased Data_t;
         when 3 =>
            datafrag : aliased DataFrag_t;
         when 4 =>
            infots : aliased InfoTS_t;
         when 5 =>
            infodst : aliased InfoDST_t;
         when 6 =>
            infosrc : aliased InfoSRC_t;
         when 7 =>
            heartbeat : aliased Heartbeat_t;
         when 8 =>
            heartbeatfrag : aliased HeartbeatFrag_t;
         when 9 =>
            gap : aliased Gap_t;
         when others =>
            nackfrag : aliased NackFrag_t;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;

   subtype Submessage_t is Submessage;

   -- Security related PID values.
   -- To indicate whether a reader favours the use of SSM.  Iff the
   --   reader favours SSM, it will use SSM if available.

   -- Deprecated parameter IDs (accepted but ignored)
   -- parameter ids for READER_DATA_LIFECYCLE & WRITER_DATA_LIFECYCLE are
   --   undefined, but let's publish them anyway

   -- ENDPOINT_GUID is formally undefined, so in strictly conforming
   --   mode, we use our own

   -- Relaxed QoS matching readers/writers are best ignored by
   --   implementations that don't understand them.  This also covers "old"
   --   DDSI2's, although they may emit an error.

   -- Names of the built-in topics
end CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
