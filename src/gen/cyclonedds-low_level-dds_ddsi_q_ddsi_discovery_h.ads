pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with System;

package CycloneDDS.Low_Level.dds_ddsi_q_ddsi_discovery_h is

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

  -- FIXME: MAX_XMIT_CONNS 
   type topic is null record;   -- incomplete struct

   type anon5908_array5909 is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_locators_one;
   type participant_builtin_topic_data_locators is record
      def_uni : aliased anon5908_array5909;  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:31
      meta_uni : aliased anon5908_array5909;  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:31
      def_multi : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_locators_one;  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:32
      meta_multi : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_locators_one;  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:30

   procedure get_participant_builtin_topic_data
     (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;
      locs : access participant_builtin_topic_data_locators)  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "get_participant_builtin_topic_data";

   function spdp_write (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "spdp_write";

   function spdp_dispose_unregister (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "spdp_dispose_unregister";

   function sedp_write_topic (tp : access topic; alive : Extensions.bool) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "sedp_write_topic";

   function sedp_write_writer (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "sedp_write_writer";

   function sedp_write_reader (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "sedp_write_reader";

   function sedp_dispose_unregister_writer (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "sedp_dispose_unregister_writer";

   function sedp_dispose_unregister_reader (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "sedp_dispose_unregister_reader";

   function builtins_dqueue_handler
     (sampleinfo : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      qarg : System.Address) return int  -- /usr/gnat/include/dds/ddsi/q_ddsi_discovery.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "builtins_dqueue_handler";

end CycloneDDS.Low_Level.dds_ddsi_q_ddsi_discovery_h;
