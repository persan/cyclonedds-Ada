pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h;

package CycloneDDS.Low_Level.dds_ddsi_q_protocol_h is

   NN_SEQUENCE_NUMBER_UNKNOWN_HIGH : constant := -1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:34
   NN_SEQUENCE_NUMBER_UNKNOWN_LOW : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:35
   --  unsupported macro: NN_SEQUENCE_NUMBER_UNKNOWN ((seqno_t) (((uint64_t)NN_SEQUENCE_NUMBER_UNKNOWN_HIGH << 32) | NN_SEQUENCE_NUMBER_UNKNOWN_LOW))

   NN_SEQUENCE_NUMBER_SET_MAX_BITS : constant := (256);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:46
   --  arg-macro: function NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits)
   --    return (unsigned) (4 * (((numbits) + 31) / 32));
   --  arg-macro: function NN_SEQUENCE_NUMBER_SET_SIZE (numbits)
   --    return sizeof (nn_sequence_number_set_header_t) + NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits);

   NN_FRAGMENT_NUMBER_SET_MAX_BITS : constant := (256);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:56
   --  arg-macro: function NN_FRAGMENT_NUMBER_SET_BITS_SIZE (numbits)
   --    return (unsigned) (4 * (((numbits) + 31) / 32));
   --  arg-macro: function NN_FRAGMENT_NUMBER_SET_SIZE (numbits)
   --    return sizeof (nn_fragment_number_set_header_t) + NN_FRAGMENT_NUMBER_SET_BITS_SIZE (numbits);

   NN_STATUSINFO_DISPOSE : constant := 16#1#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:61
   NN_STATUSINFO_UNREGISTER : constant := 16#2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:62
   --  unsupported macro: NN_STATUSINFO_STANDARDIZED (NN_STATUSINFO_DISPOSE | NN_STATUSINFO_UNREGISTER)

   NN_STATUSINFO_OSPL_AUTO : constant := 16#10000000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:64
   NN_STATUSINFOX_OSPL_AUTO : constant := 16#1#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:65
   --  unsupported macro: NN_GUID_PREFIX_UNKNOWN_INITIALIZER {{0,0,0,0, 0,0,0,0, 0,0,0,0}}

   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_ANNOUNCER : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:69
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_DETECTOR : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:70
   NN_DISC_BUILTIN_ENDPOINT_PUBLICATION_ANNOUNCER : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:71
   NN_DISC_BUILTIN_ENDPOINT_PUBLICATION_DETECTOR : constant := (2 ** 3);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:72
   NN_DISC_BUILTIN_ENDPOINT_SUBSCRIPTION_ANNOUNCER : constant := (2 ** 4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:73
   NN_DISC_BUILTIN_ENDPOINT_SUBSCRIPTION_DETECTOR : constant := (2 ** 5);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:74
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_PROXY_ANNOUNCER : constant := (2 ** 6);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:75
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_PROXY_DETECTOR : constant := (2 ** 7);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:76
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_STATE_ANNOUNCER : constant := (2 ** 8);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:77
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_STATE_DETECTOR : constant := (2 ** 9);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:78
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_DATA_WRITER : constant := (2 ** 10);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:79
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_DATA_READER : constant := (2 ** 11);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:80
   NN_BUILTIN_ENDPOINT_TL_SVC_REQUEST_DATA_WRITER : constant := (2 ** 12);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:81
   NN_BUILTIN_ENDPOINT_TL_SVC_REQUEST_DATA_READER : constant := (2 ** 13);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:82
   NN_BUILTIN_ENDPOINT_TL_SVC_REPLY_DATA_WRITER : constant := (2 ** 14);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:83
   NN_BUILTIN_ENDPOINT_TL_SVC_REPLY_DATA_READER : constant := (2 ** 15);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:84
   NN_DISC_BUILTIN_ENDPOINT_TOPICS_ANNOUNCER : constant := (2 ** 28);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:85
   NN_DISC_BUILTIN_ENDPOINT_TOPICS_DETECTOR : constant := (2 ** 29);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:86

   NN_BUILTIN_ENDPOINT_PUBLICATION_MESSAGE_SECURE_ANNOUNCER : constant := (2**16);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:89
   NN_BUILTIN_ENDPOINT_PUBLICATION_MESSAGE_SECURE_DETECTOR : constant := (2**17);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:90
   NN_BUILTIN_ENDPOINT_SUBSCRIPTION_MESSAGE_SECURE_ANNOUNCER : constant := (2**18);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:91
   NN_BUILTIN_ENDPOINT_SUBSCRIPTION_MESSAGE_SECURE_DETECTOR : constant := (2**19);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:92
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_SECURE_ANNOUNCER : constant := (2**20);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:93
   NN_BUILTIN_ENDPOINT_PARTICIPANT_MESSAGE_SECURE_DETECTOR : constant := (2**21);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:94
   NN_BUILTIN_ENDPOINT_PARTICIPANT_STATELESS_MESSAGE_ANNOUNCER : constant := (2**22);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:95
   NN_BUILTIN_ENDPOINT_PARTICIPANT_STATELESS_MESSAGE_DETECTOR : constant := (2**23);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:96
   NN_BUILTIN_ENDPOINT_PARTICIPANT_VOLATILE_SECURE_ANNOUNCER : constant := (2**24);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:97
   NN_BUILTIN_ENDPOINT_PARTICIPANT_VOLATILE_SECURE_DETECTOR : constant := (2**25);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:98
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_SECURE_ANNOUNCER : constant := (2 ** 26);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:99
   NN_DISC_BUILTIN_ENDPOINT_PARTICIPANT_SECURE_DETECTOR : constant := (2 ** 27);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:100

   NN_BES_MASK_NON_SECURITY : constant := 16#f000ffff#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:102

   NN_LOCATOR_KIND_INVALID : constant := -1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:104
   NN_LOCATOR_KIND_RESERVED : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:105
   NN_LOCATOR_KIND_UDPv4 : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:106
   NN_LOCATOR_KIND_UDPv6 : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:107
   NN_LOCATOR_KIND_TCPv4 : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:108
   NN_LOCATOR_KIND_TCPv6 : constant := 8;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:109
   NN_LOCATOR_KIND_SHEM : constant := 16;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:110
   NN_LOCATOR_KIND_RAWETH : constant := 16#8000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:111
   NN_LOCATOR_KIND_UDPv4MCGEN : constant := 16#4fff0000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:112
   NN_LOCATOR_PORT_INVALID : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:113

   RTPS_MAJOR : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:116
   RTPS_MINOR : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:117
   RTPS_MINOR_MINIMUM : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:118
   --  unsupported macro: NN_PROTOCOLID_AS_UINT32 (((uint32_t)'R' << 0) | ((uint32_t)'T' << 8) | ((uint32_t)'P' << 16) | ((uint32_t)'S' << 24))
   --  unsupported macro: RTPS_MESSAGE_HEADER_SIZE (sizeof (Header_t))
   --  unsupported macro: RTPS_SUBMESSAGE_HEADER_SIZE (sizeof (SubmessageHeader_t))

   SMFLAG_ENDIANNESS : constant := 16#01#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:141

   PL_CDR_BE : constant := 16#0200#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:192
   PL_CDR_LE : constant := 16#0300#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:193

   DATA_FLAG_INLINE_QOS : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:218
   DATA_FLAG_DATAFLAG : constant := 16#04#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:219
   DATA_FLAG_KEYFLAG : constant := 16#08#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:220

   DATAFRAG_FLAG_INLINE_QOS : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:229
   DATAFRAG_FLAG_KEYFLAG : constant := 16#04#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:230

   ACKNACK_FLAG_FINAL : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:247
   --  arg-macro: function ACKNACK_SIZE (numbits)
   --    return offsetof (AckNack_t, bits) + NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits) + 4;
   --  unsupported macro: ACKNACK_SIZE_MAX ACKNACK_SIZE (NN_SEQUENCE_NUMBER_SET_MAX_BITS)
   --  arg-macro: function GAP_SIZE (numbits)
   --    return offsetof (Gap_t, bits) + NN_SEQUENCE_NUMBER_SET_BITS_SIZE (numbits);
   --  unsupported macro: GAP_SIZE_MAX GAP_SIZE (NN_SEQUENCE_NUMBER_SET_MAX_BITS)

   INFOTS_INVALIDATE_FLAG : constant := 16#2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:268

   HEARTBEAT_FLAG_FINAL : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:278
   HEARTBEAT_FLAG_LIVELINESS : constant := 16#04#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:279
   --  arg-macro: function NACKFRAG_SIZE (numbits)
   --    return offsetof (NackFrag_t, bits) + NN_FRAGMENT_NUMBER_SET_BITS_SIZE (numbits) + 4;
   --  unsupported macro: NACKFRAG_SIZE_MAX NACKFRAG_SIZE (NN_FRAGMENT_NUMBER_SET_MAX_BITS)

   PARTICIPANT_MESSAGE_DATA_KIND_UNKNOWN : constant := 16#0#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:318
   PARTICIPANT_MESSAGE_DATA_KIND_AUTOMATIC_LIVELINESS_UPDATE : constant := 16#1#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:319
   PARTICIPANT_MESSAGE_DATA_KIND_MANUAL_LIVELINESS_UPDATE : constant := 16#2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:320
   PARTICIPANT_MESSAGE_DATA_VENDOR_SPECIFIC_KIND_FLAG : constant := 16#8000000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:321

   PID_VENDORSPECIFIC_FLAG : constant := 16#8000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:323
   PID_UNRECOGNIZED_INCOMPATIBLE_FLAG : constant := 16#4000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:324

   PID_PAD : constant := 16#0#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:326
   PID_SENTINEL : constant := 16#1#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:327
   PID_DOMAIN_ID : constant := 16#f#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:328
   --  unsupported macro: PID_DOMAIN_TAG (0x14u | PID_UNRECOGNIZED_INCOMPATIBLE_FLAG)

   PID_USER_DATA : constant := 16#2c#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:330
   PID_TOPIC_NAME : constant := 16#5#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:331
   PID_TYPE_NAME : constant := 16#7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:332
   PID_GROUP_DATA : constant := 16#2d#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:333
   PID_TOPIC_DATA : constant := 16#2e#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:334
   PID_DURABILITY : constant := 16#1d#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:335
   PID_DURABILITY_SERVICE : constant := 16#1e#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:336
   PID_DEADLINE : constant := 16#23#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:337
   PID_LATENCY_BUDGET : constant := 16#27#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:338
   PID_LIVELINESS : constant := 16#1b#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:339
   PID_RELIABILITY : constant := 16#1a#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:340
   PID_LIFESPAN : constant := 16#2b#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:341
   PID_DESTINATION_ORDER : constant := 16#25#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:342
   PID_HISTORY : constant := 16#40#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:343
   PID_RESOURCE_LIMITS : constant := 16#41#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:344
   PID_OWNERSHIP : constant := 16#1f#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:345
   PID_OWNERSHIP_STRENGTH : constant := 16#6#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:346
   PID_PRESENTATION : constant := 16#21#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:347
   PID_PARTITION : constant := 16#29#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:348
   PID_TIME_BASED_FILTER : constant := 16#4#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:349
   PID_TRANSPORT_PRIORITY : constant := 16#49#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:350
   PID_PROTOCOL_VERSION : constant := 16#15#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:351
   PID_VENDORID : constant := 16#16#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:352
   PID_UNICAST_LOCATOR : constant := 16#2f#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:353
   PID_MULTICAST_LOCATOR : constant := 16#30#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:354
   PID_MULTICAST_IPADDRESS : constant := 16#11#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:355
   PID_DEFAULT_UNICAST_LOCATOR : constant := 16#31#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:356
   PID_DEFAULT_MULTICAST_LOCATOR : constant := 16#48#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:357
   PID_METATRAFFIC_UNICAST_LOCATOR : constant := 16#32#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:358
   PID_METATRAFFIC_MULTICAST_LOCATOR : constant := 16#33#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:359
   PID_DEFAULT_UNICAST_IPADDRESS : constant := 16#c#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:360
   PID_DEFAULT_UNICAST_PORT : constant := 16#e#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:361
   PID_METATRAFFIC_UNICAST_IPADDRESS : constant := 16#45#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:362
   PID_METATRAFFIC_UNICAST_PORT : constant := 16#d#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:363
   PID_METATRAFFIC_MULTICAST_IPADDRESS : constant := 16#b#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:364
   PID_METATRAFFIC_MULTICAST_PORT : constant := 16#46#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:365
   PID_EXPECTS_INLINE_QOS : constant := 16#43#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:366
   PID_PARTICIPANT_MANUAL_LIVELINESS_COUNT : constant := 16#34#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:367
   PID_PARTICIPANT_BUILTIN_ENDPOINTS : constant := 16#44#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:368
   PID_PARTICIPANT_LEASE_DURATION : constant := 16#2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:369
   PID_CONTENT_FILTER_PROPERTY : constant := 16#35#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:370
   PID_PARTICIPANT_GUID : constant := 16#50#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:371
   PID_PARTICIPANT_ENTITYID : constant := 16#51#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:372
   PID_GROUP_GUID : constant := 16#52#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:373
   PID_GROUP_ENTITYID : constant := 16#53#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:374
   PID_BUILTIN_ENDPOINT_SET : constant := 16#58#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:375
   PID_PROPERTY_LIST : constant := 16#59#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:376
   PID_TYPE_MAX_SIZE_SERIALIZED : constant := 16#60#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:377
   PID_ENTITY_NAME : constant := 16#62#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:378
   PID_KEYHASH : constant := 16#70#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:379
   PID_STATUSINFO : constant := 16#71#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:380
   PID_CONTENT_FILTER_INFO : constant := 16#55#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:381
   PID_COHERENT_SET : constant := 16#56#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:382
   PID_DIRECTED_WRITE : constant := 16#57#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:383
   PID_ORIGINAL_WRITER_INFO : constant := 16#61#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:384
   PID_ENDPOINT_GUID : constant := 16#5a#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:385
   PID_TYPE_CONSISTENCY_ENFORCEMENT : constant := 16#74#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:386
   PID_TYPE_INFORMATION : constant := 16#75#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:387

   PID_IDENTITY_TOKEN : constant := 16#1001#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:390
   PID_PERMISSIONS_TOKEN : constant := 16#1002#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:391
   PID_DATA_TAGS : constant := 16#1003#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:392
   PID_ENDPOINT_SECURITY_INFO : constant := 16#1004#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:393
   PID_PARTICIPANT_SECURITY_INFO : constant := 16#1005#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:394
   PID_IDENTITY_STATUS_TOKEN : constant := 16#1006#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:395

   PID_READER_FAVOURS_SSM : constant := 16#72#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:400

   PID_PERSISTENCE : constant := 16#03#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:404
   PID_TYPE_CHECKSUM : constant := 16#08#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:405
   PID_TYPE2_NAME : constant := 16#09#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:406
   PID_TYPE2_CHECKSUM : constant := 16#0a#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:407
   PID_EXPECTS_ACK : constant := 16#10#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:408
   PID_MANAGER_KEY : constant := 16#12#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:409
   PID_SEND_QUEUE_SIZE : constant := 16#13#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:410
   PID_RELIABILITY_ENABLED : constant := 16#14#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:411
   PID_VARGAPPS_SEQUENCE_NUMBER_LAST : constant := 16#17#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:412
   PID_RECV_QUEUE_SIZE : constant := 16#18#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:413
   PID_RELIABILITY_OFFERED : constant := 16#19#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:414
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

   DDS_BUILTIN_TOPIC_PARTICIPANT_NAME : aliased constant String := "DCPSParticipant" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:459
   DDS_BUILTIN_TOPIC_PUBLICATION_NAME : aliased constant String := "DCPSPublication" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:460
   DDS_BUILTIN_TOPIC_SUBSCRIPTION_NAME : aliased constant String := "DCPSSubscription" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:461
   DDS_BUILTIN_TOPIC_TOPIC_NAME : aliased constant String := "DCPSTopic" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:462
   DDS_BUILTIN_TOPIC_PARTICIPANT_MESSAGE_NAME : aliased constant String := "DCPSParticipantMessage" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:463
   DDS_BUILTIN_TOPIC_TYPELOOKUP_REQUEST_NAME : aliased constant String := "DCPSTypeLookupRequest" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:464
   DDS_BUILTIN_TOPIC_TYPELOOKUP_REPLY_NAME : aliased constant String := "DCPSTypeLookupReply" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:465
   DDS_BUILTIN_TOPIC_PARTICIPANT_SECURE_NAME : aliased constant String := "DCPSParticipantsSecure" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:466
   DDS_BUILTIN_TOPIC_PUBLICATION_SECURE_NAME : aliased constant String := "DCPSPublicationsSecure" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:467
   DDS_BUILTIN_TOPIC_SUBSCRIPTION_SECURE_NAME : aliased constant String := "DCPSSubscriptionsSecure" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:468
   DDS_BUILTIN_TOPIC_PARTICIPANT_MESSAGE_SECURE_NAME : aliased constant String := "DCPSParticipantMessageSecure" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:469
   DDS_BUILTIN_TOPIC_PARTICIPANT_STATELESS_MESSAGE_NAME : aliased constant String := "DCPSParticipantStatelessMessage" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:470
   DDS_BUILTIN_TOPIC_PARTICIPANT_VOLATILE_MESSAGE_SECURE_NAME : aliased constant String := "DCPSParticipantVolatileMessageSecure" & ASCII.NUL;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:471
   --  unsupported macro: DDS_BUILTIN_TOPIC_NULL_NAME NULL

   type anon_array3422 is array (0 .. 3) of aliased Interfaces.Unsigned_8;
   type nn_protocolid_t is record
      id : aliased anon_array3422;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:28
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:29

   type nn_sequence_number_t is record
      high : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:31
      low : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:33

   type nn_sequence_number_set_header is record
      bitmap_base : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:41
      numbits : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:40

   subtype nn_sequence_number_set_header_t is nn_sequence_number_set_header;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:43

   subtype nn_fragment_number_t is unsigned;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:49

   type nn_fragment_number_set_header is record
      bitmap_base : aliased nn_fragment_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:51
      numbits : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:50

   subtype nn_fragment_number_set_header_t is nn_fragment_number_set_header;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:53

   subtype nn_count_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:59

   type Header is record
      protocol : aliased nn_protocolid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:121
      version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:122
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:123
      guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:120

   subtype Header_t is Header;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:125

   type SubmessageHeader is record
      submessageId : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:136
      flags : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:137
      octetsToNextHeader : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:138
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:135

   subtype SubmessageHeader_t is SubmessageHeader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:139

   subtype SubmessageKind is unsigned;
   SubmessageKind_SMID_PAD : constant SubmessageKind := 1;
   SubmessageKind_SMID_ACKNACK : constant SubmessageKind := 6;
   SubmessageKind_SMID_HEARTBEAT : constant SubmessageKind := 7;
   SubmessageKind_SMID_GAP : constant SubmessageKind := 8;
   SubmessageKind_SMID_INFO_TS : constant SubmessageKind := 9;
   SubmessageKind_SMID_INFO_SRC : constant SubmessageKind := 12;
   SubmessageKind_SMID_INFO_REPLY_IP4 : constant SubmessageKind := 13;
   SubmessageKind_SMID_INFO_DST : constant SubmessageKind := 14;
   SubmessageKind_SMID_INFO_REPLY : constant SubmessageKind := 15;
   SubmessageKind_SMID_NACK_FRAG : constant SubmessageKind := 18;
   SubmessageKind_SMID_HEARTBEAT_FRAG : constant SubmessageKind := 19;
   SubmessageKind_SMID_DATA : constant SubmessageKind := 21;
   SubmessageKind_SMID_DATA_FRAG : constant SubmessageKind := 22;
   SubmessageKind_SMID_SEC_BODY : constant SubmessageKind := 48;
   SubmessageKind_SMID_SEC_PREFIX : constant SubmessageKind := 49;
   SubmessageKind_SMID_SEC_POSTFIX : constant SubmessageKind := 50;
   SubmessageKind_SMID_SRTPS_PREFIX : constant SubmessageKind := 51;
   SubmessageKind_SMID_SRTPS_POSTFIX : constant SubmessageKind := 52;
   SubmessageKind_SMID_ADLINK_MSG_LEN : constant SubmessageKind := 129;
   SubmessageKind_SMID_ADLINK_ENTITY_ID : constant SubmessageKind := 130;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:143

   subtype SubmessageKind_t is SubmessageKind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:166

   type InfoTimestamp is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:169
      time : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:170
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:168

   subtype InfoTimestamp_t is InfoTimestamp;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:171

   type EntityId is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:174
      entityid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:175
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:173

   subtype EntityId_t is EntityId;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:176

   type InfoDST is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:179
      guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:180
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:178

   subtype InfoDST_t is InfoDST;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:181

   type InfoSRC is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:184
      unused : aliased unsigned;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:185
      version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:186
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:187
      guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:188
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:183

   subtype InfoSRC_t is InfoSRC;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:189

   subtype nn_parameterid_t is Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:199

   type nn_parameter is record
      parameterid : aliased nn_parameterid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:201
      length : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:202
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:200

   subtype nn_parameter_t is nn_parameter;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:204

   type Data_DataFrag_common is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:207
      extraFlags : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:208
      octetsToInlineQos : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:209
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:210
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:211
      writerSN : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:212
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:206

   subtype Data_DataFrag_common_t is Data_DataFrag_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:213

   type Data is record
      x : aliased Data_DataFrag_common_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:216
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:215

   subtype Data_t is Data;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:217

   type DataFrag is record
      x : aliased Data_DataFrag_common_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:223
      fragmentStartingNum : aliased nn_fragment_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:224
      fragmentsInSubmessage : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:225
      fragmentSize : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:226
      sampleSize : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:227
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:222

   subtype DataFrag_t is DataFrag;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:228

   type MsgLen is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:233
      length : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:234
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:232

   subtype MsgLen_t is MsgLen;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:235

   type anon_array3459 is array (0 .. 0) of aliased Interfaces.Unsigned_32;
   type AckNack is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:239
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:240
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:241
      readerSNState : aliased nn_sequence_number_set_header_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:242
      bits : aliased anon_array3459;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:243
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:238

   subtype AckNack_t is AckNack;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:245

   type Gap is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:253
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:254
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:255
      gapStart : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:256
      gapList : aliased nn_sequence_number_set_header_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:257
      bits : aliased anon_array3459;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:258
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:252

   subtype Gap_t is Gap;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:259

   type InfoTS is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:265
      time : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:266
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:264

   subtype InfoTS_t is InfoTS;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:267

   type Heartbeat is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:271
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:272
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:273
      firstSN : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:274
      lastSN : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:275
      count : aliased nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:276
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:270

   subtype Heartbeat_t is Heartbeat;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:277

   type HeartbeatFrag is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:282
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:283
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:284
      writerSN : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:285
      lastFragmentNum : aliased nn_fragment_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:286
      count : aliased nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:287
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:281

   subtype HeartbeatFrag_t is HeartbeatFrag;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:288

   type NackFrag is record
      smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:292
      readerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:293
      writerId : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:294
      writerSN : aliased nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:295
      fragmentNumberState : aliased nn_fragment_number_set_header_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:296
      bits : aliased anon_array3459;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:297
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:291

   subtype NackFrag_t is NackFrag;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:299

   type Submessage (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            smhdr : aliased SubmessageHeader_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:305
         when 1 =>
            acknack : aliased AckNack_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:306
         when 2 =>
            data : aliased Data_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:307
         when 3 =>
            datafrag : aliased DataFrag_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:308
         when 4 =>
            infots : aliased InfoTS_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:309
         when 5 =>
            infodst : aliased InfoDST_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:310
         when 6 =>
            infosrc : aliased InfoSRC_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:311
         when 7 =>
            heartbeat : aliased Heartbeat_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:312
         when 8 =>
            heartbeatfrag : aliased HeartbeatFrag_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:313
         when 9 =>
            gap : aliased Gap_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:314
         when others =>
            nackfrag : aliased NackFrag_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:315
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:304

   subtype Submessage_t is Submessage;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_protocol.h:316

end CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
