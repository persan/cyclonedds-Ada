pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Extensions;

with System;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

with CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_ssl_h is

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

   -- supposedly WinSock2 must be included before openssl headers otherwise winsock will be used
   type ddsi_ssl_plugins is record
      init : access function
        (arg1 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
           .ddsi_domaingv)
         return Extensions.bool;
      fini     : access procedure;
      ssl_free : access procedure
        (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.SSL);
      bio_vfree : access procedure
        (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.BIO);
      read : access function
        (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.SSL;
         arg2 : System.Address; arg3 : unsigned_long;
         arg4 : access CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t)
         return size_t;
      write : access function
        (arg1 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.SSL;
         arg2 : System.Address; arg3 : unsigned_long;
         arg4 : access CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t)
         return size_t;
      connect : access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
           .ddsi_domaingv;
         arg2 : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t)
         return access CycloneDDS.Low_Level.openssl_ossl_typ_h.SSL;
      listen : access function
        (arg1 : CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_socket_t)
         return access CycloneDDS.Low_Level.openssl_ossl_typ_h.BIO;
      c_accept : access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
           .ddsi_domaingv;
         arg2 : access CycloneDDS.Low_Level.openssl_ossl_typ_h.BIO;
         arg3 : access CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h
           .ddsrt_socket_t)
         return access CycloneDDS.Low_Level.openssl_ossl_typ_h.SSL;
   end record with
      Convention => C_Pass_By_Copy;

   procedure ddsi_ssl_config_plugin (plugin : access ddsi_ssl_plugins) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ssl_config_plugin";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_ssl_h;
