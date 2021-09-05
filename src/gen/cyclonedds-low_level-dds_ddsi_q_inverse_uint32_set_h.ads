pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_avl_h;

package CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h is

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

   type inverse_uint32_set_node is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      min     : aliased unsigned;
      max     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   type inverse_uint32_set is record
      ids    : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;
      cursor : aliased unsigned;
      min    : aliased unsigned;
      max    : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   procedure inverse_uint32_set_init
     (set : access inverse_uint32_set; min : unsigned; max : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "inverse_uint32_set_init";

   procedure inverse_uint32_set_fini (set : access inverse_uint32_set) with
      Import        => True,
      Convention    => C,
      External_Name => "inverse_uint32_set_fini";

   function inverse_uint32_set_alloc
     (id : access unsigned; set : access inverse_uint32_set) return int with
      Import        => True,
      Convention    => C,
      External_Name => "inverse_uint32_set_alloc";

   procedure inverse_uint32_set_free
     (set : access inverse_uint32_set; id : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "inverse_uint32_set_free";

end CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h;
