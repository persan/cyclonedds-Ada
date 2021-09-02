pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_avl_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_deliver_locally_h is

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

   type deliver_locally_makesample_t is access function
        (arg1 : System.Address;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg4 : System.Address) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:37

   type deliver_locally_first_reader_t is access function
        (arg1 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
         arg3 : access CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_iter_t) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:38

   type deliver_locally_next_reader_t is access function (arg1 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index; arg2 : access CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_iter_t) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:39

  --* return:
  --    - DDS_RETCODE_OK to try again immediately
  --    - DDS_RETCODE_TRY_AGAIN to complete restart the operation later
  --    - anything else: error to be returned from deliver_locally_xxx  

   type deliver_locally_on_failure_fastpath_t is access function
        (arg1 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
         arg2 : Extensions.bool;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.local_reader_ary;
         arg4 : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:45

   type deliver_locally_ops is record
      makesample : deliver_locally_makesample_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:48
      first_reader : deliver_locally_first_reader_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:49
      next_reader : deliver_locally_next_reader_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:50
      on_failure_fastpath : deliver_locally_on_failure_fastpath_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:51
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:47

   function deliver_locally_one
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      source_entity : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      source_entity_locked : Extensions.bool;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      wrinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_writer_info;
      ops : access constant deliver_locally_ops;
      vsourceinfo : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "deliver_locally_one";

   function deliver_locally_allinsync
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      source_entity : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      source_entity_locked : Extensions.bool;
      fastpath_rdary : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.local_reader_ary;
      wrinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_writer_info;
      ops : access constant deliver_locally_ops;
      vsourceinfo : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_deliver_locally.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "deliver_locally_allinsync";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_deliver_locally_h;
