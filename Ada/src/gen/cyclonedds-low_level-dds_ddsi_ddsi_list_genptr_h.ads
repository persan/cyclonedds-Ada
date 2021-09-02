pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;


package CycloneDDS.Low_Level.dds_ddsi_ddsi_list_genptr_h is

   --  unsupported macro: DDSI_LIST_GENERIC_PTR_TYPES(prefix_) typedef struct generic_ptr_list_node prefix_ ##_node_t; typedef struct generic_ptr_list prefix_ ##_t; typedef struct generic_ptr_list_iter prefix_ ##_iter_t; typedef struct generic_ptr_list_iter_d prefix_ ##_iter_d_t;
   --  unsupported macro: DDSI_LIST_GENERIC_PTR_DECL(linkage_,prefix_,elemT_,attrs_) linkage_ void prefix_ ##_init (prefix_ ##_t *list) attrs_; linkage_ void prefix_ ##_free (prefix_ ##_t *list) attrs_; linkage_ elemT_ prefix_ ##_insert (prefix_ ##_t *list, elemT_ o) attrs_; linkage_ elemT_ prefix_ ##_append (prefix_ ##_t *list, elemT_ o) attrs_; linkage_ elemT_ prefix_ ##_iter_first (const prefix_ ##_t *list, prefix_ ##_iter_t *iter) attrs_; linkage_ elemT_ prefix_ ##_iter_next (prefix_ ##_iter_t *iter) attrs_; linkage_ elemT_ *prefix_ ##_iter_elem_addr (prefix_ ##_iter_t *iter) attrs_; linkage_ elemT_ prefix_ ##_iter_d_first (prefix_ ##_t *list, prefix_ ##_iter_d_t *iter) attrs_; linkage_ elemT_ prefix_ ##_iter_d_next (prefix_ ##_iter_d_t *iter) attrs_; linkage_ void prefix_ ##_iter_d_remove (prefix_ ##_iter_d_t *iter) attrs_; linkage_ elemT_ prefix_ ##_remove (prefix_ ##_t *list, elemT_ o) attrs_; linkage_ elemT_ prefix_ ##_take_first (prefix_ ##_t *list) attrs_; linkage_ elemT_ prefix_ ##_take_last (prefix_ ##_t *list) attrs_; linkage_ uint32_t prefix_ ##_count (const prefix_ ##_t *list) attrs_; linkage_ void prefix_ ##_append_list (prefix_ ##_t *list, prefix_ ##_t *b) attrs_; linkage_ elemT_ *prefix_ ##_index_addr (prefix_ ##_t *list, uint32_t index) attrs_; linkage_ elemT_ prefix_ ##_index (prefix_ ##_t *list, uint32_t index) attrs_;
   --  unsupported macro: DDSI_LIST_GENERIC_PTR_CODE(linkage_,prefix_,elemT_,equals_) linkage_ void prefix_ ##_init (prefix_ ##_t *list) { generic_ptr_list_init ((struct generic_ptr_list *) list); } linkage_ void prefix_ ##_free (prefix_ ##_t *list) { generic_ptr_list_free ((struct generic_ptr_list *) list); } linkage_ elemT_ prefix_ ##_insert (prefix_ ##_t *list, elemT_ o) { return (elemT_) generic_ptr_list_insert ((struct generic_ptr_list *) list, (void *) o); } linkage_ elemT_ prefix_ ##_append (prefix_ ##_t *list, elemT_ o) { return (elemT_) generic_ptr_list_append ((struct generic_ptr_list *) list, (void *) o); } linkage_ elemT_ prefix_ ##_iter_first (const prefix_ ##_t *list, prefix_ ##_iter_t *iter) { return (elemT_) generic_ptr_list_iter_first ((struct generic_ptr_list *) list, (struct generic_ptr_list_iter *) iter); } linkage_ elemT_ prefix_ ##_iter_next (prefix_ ##_iter_t *iter) { return (elemT_) generic_ptr_list_iter_next ((struct generic_ptr_list_iter *) iter); } linkage_ elemT_ *prefix_ ##_iter_elem_addr (prefix_ ##_iter_t *iter) { return (elemT_ *) generic_ptr_list_iter_elem_addr ((struct generic_ptr_list_iter *) iter); } linkage_ elemT_ prefix_ ##_iter_d_first (prefix_ ##_t *list, prefix_ ##_iter_d_t *iter) { return (elemT_) generic_ptr_list_iter_d_first ((struct generic_ptr_list *) list, (struct generic_ptr_list_iter_d *) iter); } linkage_ elemT_ prefix_ ##_iter_d_next (prefix_ ##_iter_d_t *iter) { return (elemT_) generic_ptr_list_iter_d_next ((struct generic_ptr_list_iter_d *) iter);} linkage_ void prefix_ ##_iter_d_remove (prefix_ ##_iter_d_t *iter) { generic_ptr_list_iter_d_remove ((struct generic_ptr_list_iter_d *) iter); } linkage_ elemT_ prefix_ ##_remove (prefix_ ##_t *list, elemT_ o) { return (elemT_) generic_ptr_list_remove ((struct generic_ptr_list *) list, (void *) o, (generic_ptr_list_eq_fn) equals_); } linkage_ elemT_ prefix_ ##_take_first (prefix_ ##_t *list) { return (elemT_) generic_ptr_list_take_first ((struct generic_ptr_list *) list); } linkage_ elemT_ prefix_ ##_take_last (prefix_ ##_t *list) { return (elemT_) generic_ptr_list_take_last ((struct generic_ptr_list *) list); } linkage_ uint32_t prefix_ ##_count (const prefix_ ##_t *list) { return generic_ptr_list_count ((struct generic_ptr_list *) list); } linkage_ void prefix_ ##_append_list (prefix_ ##_t *list, prefix_ ##_t *b) { generic_ptr_list_append_list ((struct generic_ptr_list *) list, (struct generic_ptr_list *) b); } linkage_ elemT_ *prefix_ ##_index_addr (prefix_ ##_t *list, uint32_t index) { return (elemT_ *) generic_ptr_list_index_addr ((struct generic_ptr_list *) list, index); } linkage_ elemT_ prefix_ ##_index (prefix_ ##_t *list, uint32_t index) { return (elemT_) generic_ptr_list_index ((struct generic_ptr_list *) list, index); }
   type generic_ptr_list_node;
   type anon_array4335 is array (0 .. 31) of System.Address;
   type generic_ptr_list_node is record
      next : access generic_ptr_list_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      first : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      lastp1 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      ary : anon_array4335;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21

   type generic_ptr_list is record
      head : access generic_ptr_list_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      tail : access generic_ptr_list_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21

   type generic_ptr_list_iter is record
      node : access generic_ptr_list_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      idx : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21

   type generic_ptr_list_iter_d is record
      list : access generic_ptr_list;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      node : access generic_ptr_list_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      prev : access generic_ptr_list_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
      idx : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21

   type generic_ptr_list_eq_fn is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:21

   procedure generic_ptr_list_init (list : access generic_ptr_list)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_init";

   procedure generic_ptr_list_free (list : access generic_ptr_list)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_free";

   function generic_ptr_list_insert (list : access generic_ptr_list; o : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_insert";

   function generic_ptr_list_append (list : access generic_ptr_list; o : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_append";

   function generic_ptr_list_iter_first (list : access constant generic_ptr_list; iter : access generic_ptr_list_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_iter_first";

   function generic_ptr_list_iter_next (iter : access generic_ptr_list_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_iter_next";

   function generic_ptr_list_iter_elem_addr (iter : access generic_ptr_list_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_iter_elem_addr";

   function generic_ptr_list_iter_d_first (list : access generic_ptr_list; iter : access generic_ptr_list_iter_d) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_iter_d_first";

   function generic_ptr_list_iter_d_next (iter : access generic_ptr_list_iter_d) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_iter_d_next";

   procedure generic_ptr_list_iter_d_remove (iter : access generic_ptr_list_iter_d)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_iter_d_remove";

   function generic_ptr_list_remove
     (list : access generic_ptr_list;
      o : System.Address;
      arg3 : generic_ptr_list_eq_fn) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_remove";

   function generic_ptr_list_take_first (list : access generic_ptr_list) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_take_first";

   function generic_ptr_list_take_last (list : access generic_ptr_list) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_take_last";

   function generic_ptr_list_count (list : access constant generic_ptr_list) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_count";

   procedure generic_ptr_list_append_list (list : access generic_ptr_list; b : access generic_ptr_list)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_append_list";

   function generic_ptr_list_index_addr (list : access generic_ptr_list; index : Interfaces.Unsigned_32) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_index_addr";

   function generic_ptr_list_index (list : access generic_ptr_list; index : Interfaces.Unsigned_32) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_list_genptr.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "generic_ptr_list_index";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_list_genptr_h;
