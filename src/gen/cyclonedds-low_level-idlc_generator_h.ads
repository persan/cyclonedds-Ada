pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with CycloneDDS.Low_Level.idl_processor_h;

package CycloneDDS.Low_Level.idlc_generator_h is

   --  unsupported macro: IDLC_GENERATOR_OPTIONS generator_options
   --  unsupported macro: IDLC_GENERATOR_ANNOTATIONS generator_annotations
   --  unsupported macro: IDLC_GENERATE generate
-- * Copyright(c) 2020 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   type idlc_generator_options_t is access function return System.Address with
      Convention => C;

   type idlc_generator_annotations_t is access function
      return System.Address with
      Convention => C;

   type idlc_generate_t is access function
     (arg1 : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate_t)
      return int with
      Convention => C;

end CycloneDDS.Low_Level.idlc_generator_h;
