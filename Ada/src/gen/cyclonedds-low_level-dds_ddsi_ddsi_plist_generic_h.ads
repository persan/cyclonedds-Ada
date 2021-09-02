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
      Xo,
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
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:30

   procedure plist_fini_generic
     (dst : System.Address;
      desc : access pserop;
      c_aliased : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "plist_fini_generic";

   procedure plist_ser_generic_size_embeddable
     (dstoff : access size_t;
      src : System.Address;
      srcoff : size_t;
      desc : access pserop)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic_size_embeddable";

   function plist_deser_generic
     (dst : System.Address;
      src : System.Address;
      srcsize : size_t;
      bswap : Extensions.bool;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "plist_deser_generic";

   function plist_deser_generic_srcoff
     (dst : System.Address;
      src : System.Address;
      srcsize : size_t;
      srcoff : access size_t;
      bswap : Extensions.bool;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "plist_deser_generic_srcoff";

   function plist_ser_generic_embeddable
     (data : Interfaces.C.Strings.chars_ptr;
      dstoff : access size_t;
      src : System.Address;
      srcoff : size_t;
      desc : access pserop;
      bo : CycloneDDS.Low_Level.dds_ddsrt_bswap_h.ddsrt_byte_order_selector) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic_embeddable";

   function plist_ser_generic
     (dst : System.Address;
      dstsize : access size_t;
      src : System.Address;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic";

   function plist_ser_generic_be
     (dst : System.Address;
      dstsize : access size_t;
      src : System.Address;
      desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "plist_ser_generic_be";

   function plist_unalias_generic (dst : System.Address; desc : access pserop) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "plist_unalias_generic";

   function plist_equal_generic
     (srcx : System.Address;
      srcy : System.Address;
      desc : access pserop) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "plist_equal_generic";

   function plist_memsize_generic (desc : access pserop) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "plist_memsize_generic";

   function plist_print_generic
     (buf : Interfaces.C.Strings.chars_ptr;
      bufsize : size_t;
      src : System.Address;
      desc : access pserop) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist_generic.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "plist_print_generic";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;
