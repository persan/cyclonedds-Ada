pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h is

   --  unsupported macro: DDSRT_PATH_MAX PATH_MAX
   DDSRT_FILESEPCHAR : aliased constant Character :=
     '/';  --  /usr/gnat/include/dds/ddsrt/filesystem/posix.h:24

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

   type ddsrt_dir_handle_t is access all int with
      Storage_Size => 0;

   subtype ddsrt_mode_t is unsigned;

end CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h;
