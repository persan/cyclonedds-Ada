pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsc_dds_opcodes_h is

   --  unsupported macro: DDS_OP_TYPE_BOO DDS_OP_TYPE_1BY
   --  unsupported macro: DDS_OP_SUBTYPE_BOO DDS_OP_SUBTYPE_1BY
   DDS_OP_FLAG_KEY : constant := 16#01#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:131
   DDS_OP_FLAG_DEF : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:132

   DDS_OP_FLAG_FP : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:138
   DDS_OP_FLAG_SGN : constant := 16#04#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:139

   DDS_TOPIC_NO_OPTIMIZE : constant := 16#0001#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:143
   DDS_TOPIC_FIXED_KEY : constant := 16#0002#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:144
   DDS_TOPIC_CONTAINS_UNION : constant := 16#0004#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:145
   DDS_TOPIC_DISABLE_TYPECHECK : constant := 16#0008#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:146
   DDS_TOPIC_FIXED_SIZE : constant := 16#0010#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:147

   subtype dds_stream_opcode is unsigned;
   dds_stream_opcode_DDS_OP_RTS : constant dds_stream_opcode := 0;
   dds_stream_opcode_DDS_OP_ADR : constant dds_stream_opcode := 16777216;
   dds_stream_opcode_DDS_OP_JSR : constant dds_stream_opcode := 33554432;
   dds_stream_opcode_DDS_OP_JEQ : constant dds_stream_opcode := 50331648;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:30

   subtype dds_stream_typecode is unsigned;
   dds_stream_typecode_DDS_OP_VAL_1BY : constant dds_stream_typecode := 1;
   dds_stream_typecode_DDS_OP_VAL_2BY : constant dds_stream_typecode := 2;
   dds_stream_typecode_DDS_OP_VAL_4BY : constant dds_stream_typecode := 3;
   dds_stream_typecode_DDS_OP_VAL_8BY : constant dds_stream_typecode := 4;
   dds_stream_typecode_DDS_OP_VAL_STR : constant dds_stream_typecode := 5;
   dds_stream_typecode_DDS_OP_VAL_BST : constant dds_stream_typecode := 6;
   dds_stream_typecode_DDS_OP_VAL_SEQ : constant dds_stream_typecode := 7;
   dds_stream_typecode_DDS_OP_VAL_ARR : constant dds_stream_typecode := 8;
   dds_stream_typecode_DDS_OP_VAL_UNI : constant dds_stream_typecode := 9;
   dds_stream_typecode_DDS_OP_VAL_STU : constant dds_stream_typecode := 10;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:86

   subtype dds_stream_typecode_primary is unsigned;
   dds_stream_typecode_primary_DDS_OP_TYPE_1BY : constant dds_stream_typecode_primary := 65536;
   dds_stream_typecode_primary_DDS_OP_TYPE_2BY : constant dds_stream_typecode_primary := 131072;
   dds_stream_typecode_primary_DDS_OP_TYPE_4BY : constant dds_stream_typecode_primary := 196608;
   dds_stream_typecode_primary_DDS_OP_TYPE_8BY : constant dds_stream_typecode_primary := 262144;
   dds_stream_typecode_primary_DDS_OP_TYPE_STR : constant dds_stream_typecode_primary := 327680;
   dds_stream_typecode_primary_DDS_OP_TYPE_BST : constant dds_stream_typecode_primary := 393216;
   dds_stream_typecode_primary_DDS_OP_TYPE_SEQ : constant dds_stream_typecode_primary := 458752;
   dds_stream_typecode_primary_DDS_OP_TYPE_ARR : constant dds_stream_typecode_primary := 524288;
   dds_stream_typecode_primary_DDS_OP_TYPE_UNI : constant dds_stream_typecode_primary := 589824;
   dds_stream_typecode_primary_DDS_OP_TYPE_STU : constant dds_stream_typecode_primary := 655360;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:100

   subtype dds_stream_typecode_subtype is unsigned;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_1BY : constant dds_stream_typecode_subtype := 256;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_2BY : constant dds_stream_typecode_subtype := 512;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_4BY : constant dds_stream_typecode_subtype := 768;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_8BY : constant dds_stream_typecode_subtype := 1024;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_STR : constant dds_stream_typecode_subtype := 1280;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_BST : constant dds_stream_typecode_subtype := 1536;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_SEQ : constant dds_stream_typecode_subtype := 1792;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_ARR : constant dds_stream_typecode_subtype := 2048;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_UNI : constant dds_stream_typecode_subtype := 2304;
   dds_stream_typecode_subtype_DDS_OP_SUBTYPE_STU : constant dds_stream_typecode_subtype := 2560;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_opcodes.h:117

end CycloneDDS.Low_Level.dds_ddsc_dds_opcodes_h;
