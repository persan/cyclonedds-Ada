s!subtype dds_sample_info_t is dds_sample_info;.*!!
s!type dds_sample_info is record!type dds_sample_info_t is record!

s!subtype dds_attach_t is CycloneDDS.Low_Level.stdint_h.intptr_t!type dds_attach_t is access int with Storage_Size => 0!
s!subtype dds_guid_t is dds_builtintopic_guid!subtype dds_guid_t is dds_builtintopic_guid_t!
