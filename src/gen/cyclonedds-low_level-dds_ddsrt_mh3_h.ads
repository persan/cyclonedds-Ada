pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package CycloneDDS.Low_Level.dds_ddsrt_mh3_h is

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

   function ddsrt_mh3
     (key : System.Address; len : unsigned_long; seed : unsigned)
      return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mh3";

end CycloneDDS.Low_Level.dds_ddsrt_mh3_h;
