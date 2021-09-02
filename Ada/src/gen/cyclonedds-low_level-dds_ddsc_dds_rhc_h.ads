pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;
with System;
limited with CycloneDDS.Low_Level.dds_dds_h;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h is

   --  unsupported macro: NO_STATE_MASK_SET (DDS_ANY_STATE + 1)
   type dds_readcond is null record;   -- incomplete struct

   type dds_reader is null record;   -- incomplete struct

   type ddsi_tkmap is null record;   -- incomplete struct

   type dds_rhc;
   type dds_rhc_associate_t is access function
        (arg1 : access dds_rhc;
         arg2 : access dds_reader;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg4 : access ddsi_tkmap) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:29

   type dds_rhc_read_take_t is access function
        (arg1 : access dds_rhc;
         arg2 : Extensions.bool;
         arg3 : System.Address;
         arg4 : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info;
         arg5 : Interfaces.Unsigned_32;
         arg6 : Interfaces.Unsigned_32;
         arg7 : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
         arg8 : access dds_readcond) return Interfaces.Integer_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:30

   type dds_rhc_read_take_cdr_t is access function
        (arg1 : access dds_rhc;
         arg2 : Extensions.bool;
         arg3 : System.Address;
         arg4 : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info;
         arg5 : Interfaces.Unsigned_32;
         arg6 : Interfaces.Unsigned_32;
         arg7 : Interfaces.Unsigned_32;
         arg8 : Interfaces.Unsigned_32;
         arg9 : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return Interfaces.Integer_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:31

   type dds_rhc_add_readcondition_t is access function (arg1 : access dds_rhc; arg2 : access dds_readcond) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:33

   type dds_rhc_remove_readcondition_t is access procedure (arg1 : access dds_rhc; arg2 : access dds_readcond)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:34

   type dds_rhc_lock_samples_t is access function (arg1 : access dds_rhc) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:36

   type dds_rhc_ops is record
      rhc_ops : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc_ops;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:41
      read : dds_rhc_read_take_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:42
      take : dds_rhc_read_take_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:43
      readcdr : dds_rhc_read_take_cdr_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:44
      takecdr : dds_rhc_read_take_cdr_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:45
      add_readcondition : dds_rhc_add_readcondition_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:46
      remove_readcondition : dds_rhc_remove_readcondition_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:47
      lock_samples : dds_rhc_lock_samples_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:48
      associate : dds_rhc_associate_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:38

   type anon_union2098 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ops : access constant dds_rhc_ops;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:54
         when others =>
            rhc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:55
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type dds_rhc is record
      common : aliased anon_union2098;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:52

   subtype anon_array1120 is Interfaces.C.char_array (0 .. 0);
   type static_assert_59 is record
      cond : aliased anon_array1120;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:59

   function dds_rhc_associate
     (rhc : access dds_rhc;
      reader : access dds_reader;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      tkmap : access ddsi_tkmap) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_associate";

   function dds_rhc_store
     (rhc : access dds_rhc;
      wrinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_writer_info;
      sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_store";

   procedure dds_rhc_unregister_wr (rhc : access dds_rhc; wrinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_writer_info)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_unregister_wr";

   procedure dds_rhc_relinquish_ownership (rhc : access dds_rhc; wr_iid : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_relinquish_ownership";

   procedure dds_rhc_set_qos (rhc : access dds_rhc; qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_set_qos";

   procedure dds_rhc_free (rhc : access dds_rhc)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_free";

   function dds_rhc_read
     (rhc : access dds_rhc;
      lock : Extensions.bool;
      values : System.Address;
      info_seq : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info;
      max_samples : Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      cond : access dds_readcond) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_read";

   function dds_rhc_take
     (rhc : access dds_rhc;
      lock : Extensions.bool;
      values : System.Address;
      info_seq : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info;
      max_samples : Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      cond : access dds_readcond) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_take";

   function dds_rhc_readcdr
     (rhc : access dds_rhc;
      lock : Extensions.bool;
      values : System.Address;
      info_seq : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info;
      max_samples : Interfaces.Unsigned_32;
      sample_states : Interfaces.Unsigned_32;
      view_states : Interfaces.Unsigned_32;
      instance_states : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_readcdr";

   function dds_rhc_takecdr
     (rhc : access dds_rhc;
      lock : Extensions.bool;
      values : System.Address;
      info_seq : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info;
      max_samples : Interfaces.Unsigned_32;
      sample_states : Interfaces.Unsigned_32;
      view_states : Interfaces.Unsigned_32;
      instance_states : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_takecdr";

   function dds_rhc_add_readcondition (rhc : access dds_rhc; cond : access dds_readcond) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_add_readcondition";

   procedure dds_rhc_remove_readcondition (rhc : access dds_rhc; cond : access dds_readcond)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_remove_readcondition";

   function dds_rhc_lock_samples (rhc : access dds_rhc) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "dds_rhc_lock_samples";

   procedure dds_reader_data_available_cb (rd : access dds_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_rhc.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reader_data_available_cb";

end CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h;
