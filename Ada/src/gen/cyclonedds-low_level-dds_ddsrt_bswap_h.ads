pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;



package CycloneDDS.Low_Level.dds_ddsrt_bswap_h is

   --  arg-macro: procedure ddsrt_toBE2 (x)
   --    ddsrt_bswap2 (x)
   --  arg-macro: procedure ddsrt_toBE2u (x)
   --    ddsrt_bswap2u (x)
   --  arg-macro: procedure ddsrt_toBE4 (x)
   --    ddsrt_bswap4 (x)
   --  arg-macro: procedure ddsrt_toBE4u (x)
   --    ddsrt_bswap4u (x)
   --  arg-macro: procedure ddsrt_toBE8 (x)
   --    ddsrt_bswap8 (x)
   --  arg-macro: procedure ddsrt_toBE8u (x)
   --    ddsrt_bswap8u (x)
   --  arg-macro: function ddsrt_toBO2 (bo, x)
   --    return (bo) = DDSRT_BOSEL_BE ? ddsrt_bswap2 (x) : (x);
   --  arg-macro: function ddsrt_toBO2u (bo, x)
   --    return (bo) = DDSRT_BOSEL_BE ? ddsrt_bswap2u (x) : (x);
   --  arg-macro: function ddsrt_toBO4 (bo, x)
   --    return (bo) = DDSRT_BOSEL_BE ? ddsrt_bswap4 (x) : (x);
   --  arg-macro: function ddsrt_toBO4u (bo, x)
   --    return (bo) = DDSRT_BOSEL_BE ? ddsrt_bswap4u (x) : (x);
   --  arg-macro: function ddsrt_toBO8 (bo, x)
   --    return (bo) = DDSRT_BOSEL_BE ? ddsrt_bswap8 (x) : (x);
   --  arg-macro: function ddsrt_toBO8u (bo, x)
   --    return (bo) = DDSRT_BOSEL_BE ? ddsrt_bswap8u (x) : (x);
   --  arg-macro: procedure ddsrt_fromBE2 (x)
   --    ddsrt_bswap2 (x)
   --  arg-macro: procedure ddsrt_fromBE2u (x)
   --    ddsrt_bswap2u (x)
   --  arg-macro: procedure ddsrt_fromBE4 (x)
   --    ddsrt_bswap4 (x)
   --  arg-macro: procedure ddsrt_fromBE4u (x)
   --    ddsrt_bswap4u (x)
   --  arg-macro: procedure ddsrt_fromBE8 (x)
   --    ddsrt_bswap8 (x)
   --  arg-macro: procedure ddsrt_fromBE8u (x)
   --    ddsrt_bswap8u (x)
   type ddsrt_byte_order_selector is 
     (DDSRT_BOSEL_NATIVE,
      DDSRT_BOSEL_BE,
      DDSRT_BOSEL_LE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:25

   function ddsrt_bswap2u (x : Interfaces.Unsigned_16) return Interfaces.Unsigned_16  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bswap2u";

   function ddsrt_bswap2 (x : Interfaces.Integer_16) return Interfaces.Integer_16  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bswap2";

   function ddsrt_bswap4u (x : Interfaces.Unsigned_32) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bswap4u";

   function ddsrt_bswap4 (x : Interfaces.Integer_32) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bswap4";

   function ddsrt_bswap8u (x : Interfaces.Unsigned_64) return Interfaces.Unsigned_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bswap8u";

   function ddsrt_bswap8 (x : Interfaces.Integer_64) return Interfaces.Integer_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/bswap.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_bswap8";

end CycloneDDS.Low_Level.dds_ddsrt_bswap_h;
