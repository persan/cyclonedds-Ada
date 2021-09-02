pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_avl_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
with System;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;


with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_q_addrset_h is

   type addrset_node is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:27
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:28
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:26

   type addrset_node_t is access all addrset_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:29

   type addrset is record
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:32
      refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:33
      ucaddrs : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_ctree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:34
      mcaddrs : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_ctree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:31

   type addrset_forall_fun_t is access procedure (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:37

   type addrset_forone_fun_t is access function (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t; arg2 : System.Address) return CycloneDDS.Low_Level.unistd_h.ssize_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:38

   function new_addrset return access addrset  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "new_addrset";

   function ref_addrset (as : access addrset) return access addrset  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ref_addrset";

   procedure unref_addrset (as : access addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "unref_addrset";

   procedure add_locator_to_addrset
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "add_locator_to_addrset";

   procedure add_xlocator_to_addrset
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "add_xlocator_to_addrset";

   procedure remove_from_addrset
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "remove_from_addrset";

   function addrset_purge (as : access addrset) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_purge";

   function compare_locators (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "compare_locators";

   function compare_xlocators (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "compare_xlocators";

   procedure copy_addrset_into_addrset_uc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      asadd : access constant addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "copy_addrset_into_addrset_uc";

   procedure copy_addrset_into_addrset_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      asadd : access constant addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "copy_addrset_into_addrset_mc";

   procedure copy_addrset_into_addrset
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      asadd : access constant addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "copy_addrset_into_addrset";

   function addrset_count (as : access constant addrset) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_count";

   function addrset_count_uc (as : access constant addrset) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_count_uc";

   function addrset_count_mc (as : access constant addrset) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_count_mc";

   function addrset_empty_uc (as : access constant addrset) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_empty_uc";

   function addrset_empty_mc (as : access constant addrset) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_empty_mc";

   function addrset_empty (as : access constant addrset) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_empty";

   function addrset_any_uc (as : access constant addrset; dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_any_uc";

   function addrset_any_mc (as : access constant addrset; dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_any_mc";

   procedure addrset_any_uc_else_mc_nofail (as : access constant addrset; dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_any_uc_else_mc_nofail";

   function addrset_forone
     (as : access addrset;
      f : addrset_forone_fun_t;
      arg : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_forone";

   procedure addrset_forall
     (as : access addrset;
      f : addrset_forall_fun_t;
      arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_forall";

   function addrset_forall_count
     (as : access addrset;
      f : addrset_forall_fun_t;
      arg : System.Address) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_forall_count";

   function addrset_forall_uc_else_mc_count
     (as : access addrset;
      f : addrset_forall_fun_t;
      arg : System.Address) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_forall_uc_else_mc_count";

   function addrset_forall_mc_count
     (as : access addrset;
      f : addrset_forall_fun_t;
      arg : System.Address) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_forall_mc_count";

   procedure nn_log_addrset
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tf : Interfaces.Unsigned_32;
      prefix : Interfaces.C.Strings.chars_ptr;
      as : access constant addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "nn_log_addrset";

   function addrset_eq_onesidederr (a : access constant addrset; b : access constant addrset) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_eq_onesidederr";

   function is_unspec_locator (loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "is_unspec_locator";

   function is_unspec_xlocator (loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "is_unspec_xlocator";

   procedure set_unspec_locator (loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "set_unspec_locator";

   procedure set_unspec_xlocator (loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "set_unspec_xlocator";

   function add_addresses_to_addrset
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      addrs : Interfaces.C.Strings.chars_ptr;
      port_mode : int;
      msgtag : Interfaces.C.Strings.chars_ptr;
      req_mc : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "add_addresses_to_addrset";

   function addrset_contains_ssm (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; as : access constant addrset) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_contains_ssm";

   function addrset_any_ssm
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access constant addrset;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_any_ssm";

   function addrset_any_non_ssm_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access constant addrset;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "addrset_any_non_ssm_mc";

   procedure copy_addrset_into_addrset_no_ssm_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      asadd : access constant addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "copy_addrset_into_addrset_no_ssm_mc";

   procedure copy_addrset_into_addrset_no_ssm
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      as : access addrset;
      asadd : access constant addrset)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_addrset.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "copy_addrset_into_addrset_no_ssm";

end CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;
