pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

with System;

package CycloneDDS.Low_Level.dds_ddsrt_fibheap_h is

   --  arg-macro: procedure DDSRT_FIBHEAPDEF_INITIALIZER (offset, cmp)
   --    { (offset), (cmp) }
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

   type ddsrt_fibheap_node;
   type ddsrt_fibheap_node is record
      parent : access ddsrt_fibheap_node;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:24
      children : access ddsrt_fibheap_node;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:24
      prev : access ddsrt_fibheap_node;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:25
      next : access ddsrt_fibheap_node;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:25
      mark : Extensions.Unsigned_1;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:26
      degree : Extensions.Unsigned_31;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:27
   end record
   with Convention => C_Pass_By_Copy,
        
        Alignment => 8;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:23

   subtype ddsrt_fibheap_node_t is ddsrt_fibheap_node;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:28

   type ddsrt_fibheap_def is record
      offset : aliased access unsigned;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:31
      cmp : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:30

   subtype ddsrt_fibheap_def_t is ddsrt_fibheap_def;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:33

  -- points to root with min key value  
   type ddsrt_fibheap is record
      roots : access ddsrt_fibheap_node_t;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:35

   subtype ddsrt_fibheap_t is ddsrt_fibheap;  -- /usr/gnat/include/dds/ddsrt/fibheap.h:37

   procedure ddsrt_fibheap_def_init
     (fhdef : access ddsrt_fibheap_def_t;
      offset : access unsigned;
      cmp : access function (arg1 : System.Address; arg2 : System.Address) return int)  -- /usr/gnat/include/dds/ddsrt/fibheap.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_def_init";

   procedure ddsrt_fibheap_init (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t)  -- /usr/gnat/include/dds/ddsrt/fibheap.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_init";

   function ddsrt_fibheap_min (fhdef : access constant ddsrt_fibheap_def_t; fh : access constant ddsrt_fibheap_t) return System.Address  -- /usr/gnat/include/dds/ddsrt/fibheap.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_min";

   procedure ddsrt_fibheap_merge
     (fhdef : access constant ddsrt_fibheap_def_t;
      a : access ddsrt_fibheap_t;
      b : access ddsrt_fibheap_t)  -- /usr/gnat/include/dds/ddsrt/fibheap.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_merge";

   procedure ddsrt_fibheap_insert
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh : access ddsrt_fibheap_t;
      vnode : System.Address)  -- /usr/gnat/include/dds/ddsrt/fibheap.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_insert";

   procedure ddsrt_fibheap_delete
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh : access ddsrt_fibheap_t;
      vnode : System.Address)  -- /usr/gnat/include/dds/ddsrt/fibheap.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_delete";

   function ddsrt_fibheap_extract_min (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t) return System.Address  -- /usr/gnat/include/dds/ddsrt/fibheap.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_extract_min";

  -- to be called AFTER decreasing the key  
   procedure ddsrt_fibheap_decrease_key
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh : access ddsrt_fibheap_t;
      vnode : System.Address)  -- /usr/gnat/include/dds/ddsrt/fibheap.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_decrease_key";

end CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
