pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsrt_random_h is

   DDSRT_MT19937_N : constant :=
     624;  --  /usr/gnat/include/dds/ddsrt/random.h:23

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

   type anon3699_array3700 is array (0 .. 7) of aliased unsigned;
   type ddsrt_prng_seed_t is record
      key : aliased anon3699_array3700;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_prng_seed_t is ddsrt_prng_seed_t;

   type anon3703_array3705 is array (0 .. 623) of aliased unsigned;
   type ddsrt_prng_t is record
      mt  : aliased anon3703_array3705;
      mti : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_prng_t is ddsrt_prng;

   procedure ddsrt_random_init with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_random_init";

   procedure ddsrt_random_fini with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_random_fini";

   procedure ddsrt_prng_init_simple
     (prng : access ddsrt_prng_t; seed : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_prng_init_simple";

   function ddsrt_prng_makeseed
     (seed : access ddsrt_prng_seed_t) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_prng_makeseed";

   procedure ddsrt_prng_init
     (prng : access ddsrt_prng_t;
      seed : access constant ddsrt_prng_seed_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_prng_init";

   function ddsrt_prng_random (prng : access ddsrt_prng_t) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_prng_random";

   function ddsrt_random return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_random";

end CycloneDDS.Low_Level.dds_ddsrt_random_h;
