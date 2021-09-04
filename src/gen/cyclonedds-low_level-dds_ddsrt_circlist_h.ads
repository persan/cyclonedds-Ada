pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsrt_circlist_h is

   --  arg-macro: function DDSRT_FROM_CIRCLIST (typ_, member_, cle_)
   --    return (typ_ *) ((char *) (cle_) - offsetof (typ_, member_));
  -- * Copyright(c) 2006 to 2019 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

  -- Circular doubly linked list implementation  
  -- pointer to latest inserted element  
   type ddsrt_circlist_elem;
   type ddsrt_circlist is record
      latest : access ddsrt_circlist_elem;  -- /usr/gnat/include/dds/ddsrt/circlist.h:28
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/circlist.h:27

   type ddsrt_circlist_elem is record
      next : access ddsrt_circlist_elem;  -- /usr/gnat/include/dds/ddsrt/circlist.h:32
      prev : access ddsrt_circlist_elem;  -- /usr/gnat/include/dds/ddsrt/circlist.h:33
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsrt/circlist.h:31

   procedure ddsrt_circlist_init (list : access ddsrt_circlist)  -- /usr/gnat/include/dds/ddsrt/circlist.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_init";

   function ddsrt_circlist_isempty (list : access constant ddsrt_circlist) return Extensions.bool  -- /usr/gnat/include/dds/ddsrt/circlist.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_isempty";

   procedure ddsrt_circlist_append (list : access ddsrt_circlist; elem : access ddsrt_circlist_elem)  -- /usr/gnat/include/dds/ddsrt/circlist.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_append";

   procedure ddsrt_circlist_remove (list : access ddsrt_circlist; elem : access ddsrt_circlist_elem)  -- /usr/gnat/include/dds/ddsrt/circlist.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_remove";

   function ddsrt_circlist_oldest (list : access constant ddsrt_circlist) return access ddsrt_circlist_elem  -- /usr/gnat/include/dds/ddsrt/circlist.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_oldest";

   function ddsrt_circlist_latest (list : access constant ddsrt_circlist) return access ddsrt_circlist_elem  -- /usr/gnat/include/dds/ddsrt/circlist.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_latest";

end CycloneDDS.Low_Level.dds_ddsrt_circlist_h;
