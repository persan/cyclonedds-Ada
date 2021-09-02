pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.openssl_ossl_typ_h;
with System;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

with CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_ssl_h is

   type ddsi_ssl_plugins is record
      init : access function (arg1 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:31
      fini : access procedure;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:32
      ssl_free : access procedure (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.ssl_st);  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:33
      bio_vfree : access procedure (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.bio_st);  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:34
      read : access function
           (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.ssl_st;
            arg2 : System.Address;
            arg3 : size_t;
            arg4 : access CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t) return CycloneDDS.Low_Level.unistd_h.ssize_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:35
      write : access function
           (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.ssl_st;
            arg2 : System.Address;
            arg3 : size_t;
            arg4 : access CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t) return CycloneDDS.Low_Level.unistd_h.ssize_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:36
      connect : access function (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; arg2 : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t) return access CycloneDDS.Low_Level.openssl_ossl_typ_h.ssl_st;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:37
      listen : access function (arg1 : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t) return access CycloneDDS.Low_Level.openssl_ossl_typ_h.bio_st;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:38
      c_accept : access function
           (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
            arg2 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.bio_st;
            arg3 : access CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t) return access CycloneDDS.Low_Level.openssl_ossl_typ_h.ssl_st;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:29

   procedure ddsi_ssl_config_plugin (plugin : access ddsi_ssl_plugins)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_ssl.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_ssl_config_plugin";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_ssl_h;
