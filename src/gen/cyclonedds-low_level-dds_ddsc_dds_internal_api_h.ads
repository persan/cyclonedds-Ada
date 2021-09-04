pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_dds_h;


package CycloneDDS.Low_Level.dds_ddsc_dds_internal_api_h is

   DDS_READ_WITHOUT_LOCK : constant := (16#FFFFFFED#);  --  /usr/gnat/include/dds/ddsc/dds_internal_api.h:25

  -- * Copyright(c) 2006 to 2020 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

  --* @file
  -- * WARNING This file is only needed for the work around for https://github.com/eclipse-cyclonedds/cyclonedds/issues/74
  -- * Do not include this file in an application! Once issue #74 is solved this header file should be removed.
  --  

  -- * @private
  -- * dds_reader_lock_samples: Returns number of samples in read cache and locks the
  -- * reader cache to make sure that the samples content doesn't change.
  -- * Because the cache is locked, you should be able to read/take without having to
  -- * lock first. This is done by passing the DDS_READ_WITHOUT_LOCK value to the
  -- * read/take call as maxs. Then the read/take will not lock but still unlock.
  -- *
  -- * CycloneDDS doesn't support a read/take that just returns all
  -- * available samples issue #74. As a work around to support LENGTH_UNLIMITED in C++.
  -- * dds_reader_lock_samples() and DDS_READ_WITHOUT_LOCK are needed.
  --  

   function dds_reader_lock_samples (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return unsigned  -- /usr/gnat/include/dds/ddsc/dds_internal_api.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reader_lock_samples";

end CycloneDDS.Low_Level.dds_ddsc_dds_internal_api_h;
