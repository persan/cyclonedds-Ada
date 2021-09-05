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

   type ddsrt_byte_order_selector is
     (DDSRT_BOSEL_NATIVE, DDSRT_BOSEL_BE, DDSRT_BOSEL_LE) with
      Convention => C;

   function ddsrt_bswap2u (x : unsigned_short) return unsigned_short with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_bswap2u";

   function ddsrt_bswap2 (x : short) return short with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_bswap2";

   function ddsrt_bswap4u (x : unsigned) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_bswap4u";

   function ddsrt_bswap4 (x : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_bswap4";

   function ddsrt_bswap8u (x : unsigned_long) return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_bswap8u";

   function ddsrt_bswap8 (x : long) return long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_bswap8";

end CycloneDDS.Low_Level.dds_ddsrt_bswap_h;
