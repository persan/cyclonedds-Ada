pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Extensions;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_bswap_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h is

  -- * Copyright(c) 2019 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

  -- Instructions for the generic serializer (&c) that handles most parameters.
  --   The "packed" attribute means single-byte instructions on GCC and Clang.  

   type pserop is 
     (XSTOP,
      XO,
      XS,
      XE1,
      XE2,
      XE3,
      Xi,
      Xix2,
      Xix3,
      Xix4,
      Xu,
      Xux2,
      Xux3,
      Xux4,
      Xux5,
      XD,
      XDx2,
      Xl,
      Xo2,
      Xox2,
      Xb,
      Xbx2,
      Xbx3,
      Xbx4,
      Xbx5,
      XbCOND,
      XbPROP,
      XG,
      XK,
      XQ,
      Xopt)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:30

  -- octet sequence  
  -- string  
  -- enum 0..1, 0..2, 0..3  
  -- int32_t, 1 .. 4 in a row  
  -- uint32_t, 1 .. 5 in a row  
  -- duration, 1 .. 2 in a row  
  -- int64_t  
  -- octet, 1 .. 2 in a row  
  -- boolean, 1 .. 5 in a row  
  -- boolean: compare to ignore remainder if false (for use_... flags)  
  -- boolean: omit in serialized form; skip serialization if false; always true on deserialize  
  -- GUID  
  -- keyhash  
  -- arbitary non-nested sequence  
  -- remainder is optional on deser, 0-init if not present  
   procedure plist_fini_generic
     (dst : System.Address;
      desc : access pserop;
      c_aliased : Extensions.bool)  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "plist_fini_generic";

   procedure plist_ser_generic_size_embeddable
     (dstoff : access unsigned_long;
      src : System.Address;
      srcoff : unsigned_long;
      desc : access pserop)  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic_size_embeddable";

   function plist_deser_generic
     (dst : System.Address;
      src : System.Address;
      srcsize : unsigned_long;
      bswap : Extensions.bool;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "plist_deser_generic";

   function plist_deser_generic_srcoff
     (dst : System.Address;
      src : System.Address;
      srcsize : unsigned_long;
      srcoff : access unsigned_long;
      bswap : Extensions.bool;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "plist_deser_generic_srcoff";

   function plist_ser_generic_embeddable
     (data : Interfaces.C.Strings.chars_ptr;
      dstoff : access unsigned_long;
      src : System.Address;
      srcoff : unsigned_long;
      desc : access pserop;
      bo : CycloneDDS.Low_Level.dds_ddsrt_bswap_h.ddsrt_byte_order_selector) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic_embeddable";

   function plist_ser_generic
     (dst : System.Address;
      dstsize : access unsigned_long;
      src : System.Address;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic";

   function plist_ser_generic_be
     (dst : System.Address;
      dstsize : access unsigned_long;
      src : System.Address;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic_be";

   function plist_unalias_generic (dst : System.Address; desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "plist_unalias_generic";

   function plist_equal_generic
     (srcx : System.Address;
      srcy : System.Address;
      desc : access pserop) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "plist_equal_generic";

   function plist_memsize_generic (desc : access pserop) return unsigned_long  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "plist_memsize_generic";

   function plist_print_generic
     (buf : Interfaces.C.Strings.chars_ptr;
      bufsize : unsigned_long;
      src : System.Address;
      desc : access pserop) return unsigned_long  -- /usr/gnat/include/dds/ddsi/ddsi_plist_generic.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "plist_print_generic";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;
