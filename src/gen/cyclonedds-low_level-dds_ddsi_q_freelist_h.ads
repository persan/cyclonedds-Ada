pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;

with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_q_freelist_h is

   FREELIST_NONE : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/q_freelist.h:22
   FREELIST_ATOMIC_LIFO : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/q_freelist.h:23
   FREELIST_DOUBLE : constant :=
     3;  --  /usr/gnat/include/dds/ddsi/q_freelist.h:24
   --  unsupported macro: FREELIST_TYPE FREELIST_DOUBLE

   NN_FREELIST_NPAR : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/q_freelist.h:53
   NN_FREELIST_NPAR_LG2 : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/q_freelist.h:54
   NN_FREELIST_MAGSIZE : constant :=
     256;  --  /usr/gnat/include/dds/ddsi/q_freelist.h:55

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

   type anon6018_array6019 is array (0 .. 255) of System.Address;
   type nn_freelistM is record
      x    : anon6018_array6019;
      next : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

   type nn_freelist1 is record
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      count : aliased unsigned;
      m     : access nn_freelistM;
   end record with
      Convention => C_Pass_By_Copy;

   type anon6022_array6023 is array (0 .. 3) of aliased nn_freelist1;
   type nn_freelist is record
      inner : aliased anon6022_array6023;
      cc    : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      mlist   : access nn_freelistM;
      emlist  : access nn_freelistM;
      count   : aliased unsigned;
      max     : aliased unsigned;
      linkoff : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

   procedure nn_freelist_init
     (fl : access nn_freelist; max : unsigned; linkoff : unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_freelist_init";

   procedure nn_freelist_fini
     (fl   : access nn_freelist;
      free : access procedure (arg1 : System.Address)) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_freelist_fini";

   function nn_freelist_push
     (fl : access nn_freelist; elem : System.Address)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "nn_freelist_push";

   function nn_freelist_pushmany
     (fl : access nn_freelist; first : System.Address; last : System.Address;
      n  : unsigned) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "nn_freelist_pushmany";

   function nn_freelist_pop
     (fl : access nn_freelist) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "nn_freelist_pop";

end CycloneDDS.Low_Level.dds_ddsi_q_freelist_h;
