pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsi_q_bitset_h is

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

   function nn_bitset_isset
     (numbits : unsigned;
      bits : access unsigned;
      idx : unsigned) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_bitset.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_isset";

   procedure nn_bitset_set
     (numbits : unsigned;
      bits : access unsigned;
      idx : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_bitset.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_set";

   procedure nn_bitset_clear
     (numbits : unsigned;
      bits : access unsigned;
      idx : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_bitset.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_clear";

   procedure nn_bitset_zero (numbits : unsigned; bits : access unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_bitset.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_zero";

   procedure nn_bitset_one (numbits : unsigned; bits : access unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_bitset.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "nn_bitset_one";

  -- clear bits "accidentally" set  
end CycloneDDS.Low_Level.dds_ddsi_q_bitset_h;
