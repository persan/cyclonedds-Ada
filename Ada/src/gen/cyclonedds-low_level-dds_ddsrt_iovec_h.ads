pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;



package CycloneDDS.Low_Level.dds_ddsrt_iovec_h is

   subtype ddsrt_iovec_t is CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/iovec.h:34

   subtype ddsrt_iov_len_t is size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/iovec.h:35

   subtype ddsrt_msg_iovlen_t is size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/iovec.h:38

end CycloneDDS.Low_Level.dds_ddsrt_iovec_h;
