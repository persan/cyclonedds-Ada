pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;



package CycloneDDS.Low_Level.dds_ddsrt_avl_h is

   --  unsupported macro: DDSRT_AVL_MAX_TREEHEIGHT (12 * sizeof (void *))
   DDSRT_AVL_TREEDEF_FLAG_INDKEY : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:185
   DDSRT_AVL_TREEDEF_FLAG_R : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:186
   DDSRT_AVL_TREEDEF_FLAG_ALLOWDUPS : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:187
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER (avlnodeoffset, keyoffset, comparekk_, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk := (comparekk_) }, (augment), 0, 0 }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY (avlnodeoffset, keyoffset, comparekk_, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_INDKEY, 0 }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk_, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_ALLOWDUPS, 0 }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk_, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_INDKEYorDDSRT_AVL_TREEDEF_FLAG_ALLOWDUPS, 0 }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_R (avlnodeoffset, keyoffset, comparekk_, cmparg, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk_r := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_R, (cmparg) }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY_R (avlnodeoffset, keyoffset, comparekk_, cmparg, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk_r := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_INDKEYorDDSRT_AVL_TREEDEF_FLAG_R, (cmparg) }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_R_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk_, cmparg, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk_r := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_RorDDSRT_AVL_TREEDEF_FLAG_ALLOWDUPS, (cmparg) }
   --  arg-macro: procedure DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY_R_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk_, cmparg, augment)
   --    { (avlnodeoffset), (keyoffset), { .comparekk_r := (comparekk_) }, (augment), DDSRT_AVL_TREEDEF_FLAG_INDKEYorDDSRT_AVL_TREEDEF_FLAG_RorDDSRT_AVL_TREEDEF_FLAG_ALLOWDUPS, (cmparg) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER (avlnodeoffset, keyoffset, comparekk, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER (avlnodeoffset, keyoffset, comparekk, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_INDKEY (avlnodeoffset, keyoffset, comparekk, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY (avlnodeoffset, keyoffset, comparekk, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_INDKEY_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_R (avlnodeoffset, keyoffset, comparekk, cmparg, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_R (avlnodeoffset, keyoffset, comparekk, cmparg, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_INDKEY_R (avlnodeoffset, keyoffset, comparekk, cmparg, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY_R (avlnodeoffset, keyoffset, comparekk, cmparg, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_R_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, cmparg, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_R_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, cmparg, augment) }
   --  arg-macro: procedure DDSRT_AVL_CTREEDEF_INITIALIZER_INDKEY_R_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, cmparg, augment)
   --    { DDSRT_AVL_TREEDEF_INITIALIZER_INDKEY_R_ALLOWDUPS (avlnodeoffset, keyoffset, comparekk, cmparg, augment) }

   type ddsrt_avl_compare_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:173

   type ddsrt_avl_compare_r_t is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:174

   type ddsrt_avl_augment_t is access procedure
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:175

   type ddsrt_avl_walk_t is access procedure (arg1 : System.Address; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:176

   type ddsrt_avl_const_walk_t is access procedure (arg1 : System.Address; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:177

   type ddsrt_avl_node;
   type anon_array2554 is array (0 .. 1) of access ddsrt_avl_node;
   type ddsrt_avl_node is record
      cs : anon_array2554;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:180
      parent : access ddsrt_avl_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:181
      height : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:182
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:179

   subtype ddsrt_avl_node_t is ddsrt_avl_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:183

   type anon_union2557 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            comparekk : ddsrt_avl_compare_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:196
         when others =>
            comparekk_r : ddsrt_avl_compare_r_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:197
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type ddsrt_avl_treedef is record
      avlnodeoffset : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:193
      keyoffset : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:194
      u : aliased anon_union2557;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:198
      augment : ddsrt_avl_augment_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:199
      flags : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:200
      cmp_arg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:201
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:189

   subtype ddsrt_avl_treedef_t is ddsrt_avl_treedef;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:202

   type ddsrt_avl_ctreedef is record
      t : aliased ddsrt_avl_treedef_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:205
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:204

   subtype ddsrt_avl_ctreedef_t is ddsrt_avl_ctreedef;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:206

   type ddsrt_avl_tree is record
      root : access ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:209
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:208

   subtype ddsrt_avl_tree_t is ddsrt_avl_tree;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:210

   type ddsrt_avl_ctree is record
      t : aliased ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:213
      count : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:214
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:212

   subtype ddsrt_avl_ctree_t is ddsrt_avl_ctree;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:215

   type anon_array2570 is array (0 .. 95) of System.Address;
   type ddsrt_avl_path is record
      depth : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:218
      pnodeidx : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:219
      parent : access ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:220
      pnode : anon_array2570;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:221
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:217

   subtype ddsrt_avl_path_t is ddsrt_avl_path;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:222

   type ddsrt_avl_ipath is record
      p : aliased ddsrt_avl_path_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:225
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:224

   subtype ddsrt_avl_ipath_t is ddsrt_avl_ipath;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:226

   type ddsrt_avl_dpath is record
      p : aliased ddsrt_avl_path_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:229
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:228

   subtype ddsrt_avl_dpath_t is ddsrt_avl_dpath;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:230

   type anon_array2583 is array (0 .. 96) of access ddsrt_avl_node_t;
   type ddsrt_avl_iter is record
      td : access constant ddsrt_avl_treedef_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:233
      right : access ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:234
      todop : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:235
      todo : anon_array2583;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:236
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:232

   subtype ddsrt_avl_iter_t is ddsrt_avl_iter;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:237

   type ddsrt_avl_citer is record
      t : aliased ddsrt_avl_iter_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:240
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:239

   subtype ddsrt_avl_citer_t is ddsrt_avl_citer;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:241

   procedure ddsrt_avl_treedef_init
     (td : access ddsrt_avl_treedef_t;
      avlnodeoffset : size_t;
      keyoffset : size_t;
      comparekk : ddsrt_avl_compare_t;
      augment : ddsrt_avl_augment_t;
      flags : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_treedef_init";

   procedure ddsrt_avl_treedef_init_r
     (td : access ddsrt_avl_treedef_t;
      avlnodeoffset : size_t;
      keyoffset : size_t;
      comparekk_r : ddsrt_avl_compare_r_t;
      cmp_arg : System.Address;
      augment : ddsrt_avl_augment_t;
      flags : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_treedef_init_r";

   procedure ddsrt_avl_init (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_init";

   procedure ddsrt_avl_free
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      freefun : access procedure (arg1 : System.Address))  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_free";

   procedure ddsrt_avl_free_arg
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      freefun : access procedure (arg1 : System.Address; arg2 : System.Address);
      arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_free_arg";

   function ddsrt_avl_root (td : access constant ddsrt_avl_treedef_t; tree : access constant ddsrt_avl_tree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_root";

   function ddsrt_avl_root_non_empty (td : access constant ddsrt_avl_treedef_t; tree : access constant ddsrt_avl_tree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_root_non_empty";

   function ddsrt_avl_lookup
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup";

   function ddsrt_avl_lookup_ipath
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address;
      path : access ddsrt_avl_ipath_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup_ipath";

   function ddsrt_avl_lookup_dpath
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address;
      path : access ddsrt_avl_dpath_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup_dpath";

   function ddsrt_avl_lookup_pred_eq
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup_pred_eq";

   function ddsrt_avl_lookup_succ_eq
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup_succ_eq";

   function ddsrt_avl_lookup_pred
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup_pred";

   function ddsrt_avl_lookup_succ
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_lookup_succ";

   procedure ddsrt_avl_insert
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      node : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_insert";

   procedure ddsrt_avl_delete
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      node : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_delete";

   procedure ddsrt_avl_insert_ipath
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      node : System.Address;
      path : access ddsrt_avl_ipath_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_insert_ipath";

   procedure ddsrt_avl_delete_dpath
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      node : System.Address;
      path : access ddsrt_avl_dpath_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_delete_dpath";

   procedure ddsrt_avl_swap_node
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      oldn : System.Address;
      newn : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_swap_node";

   procedure ddsrt_avl_augment_update (td : access constant ddsrt_avl_treedef_t; node : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_augment_update";

   function ddsrt_avl_is_empty (tree : access constant ddsrt_avl_tree_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_is_empty";

   function ddsrt_avl_is_singleton (tree : access constant ddsrt_avl_tree_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_is_singleton";

   function ddsrt_avl_find_min (td : access constant ddsrt_avl_treedef_t; tree : access constant ddsrt_avl_tree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_find_min";

   function ddsrt_avl_find_max (td : access constant ddsrt_avl_treedef_t; tree : access constant ddsrt_avl_tree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_find_max";

   function ddsrt_avl_find_pred
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      vnode : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_find_pred";

   function ddsrt_avl_find_succ
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      vnode : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_find_succ";

   procedure ddsrt_avl_walk
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      f : ddsrt_avl_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_walk";

   procedure ddsrt_avl_const_walk
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      f : ddsrt_avl_const_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_const_walk";

   procedure ddsrt_avl_walk_range
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_walk_range";

   procedure ddsrt_avl_const_walk_range
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_const_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_const_walk_range";

   procedure ddsrt_avl_walk_range_reverse
     (td : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_walk_range_reverse";

   procedure ddsrt_avl_const_walk_range_reverse
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_const_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_const_walk_range_reverse";

   function ddsrt_avl_iter_first
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      iter : access ddsrt_avl_iter_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_iter_first";

   function ddsrt_avl_iter_succ_eq
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      iter : access ddsrt_avl_iter_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_iter_succ_eq";

   function ddsrt_avl_iter_succ
     (td : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t;
      iter : access ddsrt_avl_iter_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_iter_succ";

   function ddsrt_avl_iter_next (iter : access ddsrt_avl_iter_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_iter_next";

   procedure ddsrt_avl_ctreedef_init
     (td : access ddsrt_avl_ctreedef_t;
      avlnodeoffset : size_t;
      keyoffset : size_t;
      comparekk : ddsrt_avl_compare_t;
      augment : ddsrt_avl_augment_t;
      flags : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_ctreedef_init";

   procedure ddsrt_avl_ctreedef_init_r
     (td : access ddsrt_avl_ctreedef_t;
      avlnodeoffset : size_t;
      keyoffset : size_t;
      comparekk_r : ddsrt_avl_compare_r_t;
      cmp_arg : System.Address;
      augment : ddsrt_avl_augment_t;
      flags : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_ctreedef_init_r";

   procedure ddsrt_avl_cinit (td : access constant ddsrt_avl_ctreedef_t; tree : access ddsrt_avl_ctree_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cinit";

   procedure ddsrt_avl_cfree
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      freefun : access procedure (arg1 : System.Address))  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cfree";

   procedure ddsrt_avl_cfree_arg
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      freefun : access procedure (arg1 : System.Address; arg2 : System.Address);
      arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cfree_arg";

   function ddsrt_avl_croot (td : access constant ddsrt_avl_ctreedef_t; tree : access constant ddsrt_avl_ctree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_croot";

   function ddsrt_avl_croot_non_empty (td : access constant ddsrt_avl_ctreedef_t; tree : access constant ddsrt_avl_ctree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_croot_non_empty";

   function ddsrt_avl_clookup
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup";

   function ddsrt_avl_clookup_ipath
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address;
      path : access ddsrt_avl_ipath_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup_ipath";

   function ddsrt_avl_clookup_dpath
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address;
      path : access ddsrt_avl_dpath_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup_dpath";

   function ddsrt_avl_clookup_pred_eq
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup_pred_eq";

   function ddsrt_avl_clookup_succ_eq
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup_succ_eq";

   function ddsrt_avl_clookup_pred
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup_pred";

   function ddsrt_avl_clookup_succ
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_clookup_succ";

   procedure ddsrt_avl_cinsert
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      node : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cinsert";

   procedure ddsrt_avl_cdelete
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      node : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cdelete";

   procedure ddsrt_avl_cinsert_ipath
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      node : System.Address;
      path : access ddsrt_avl_ipath_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cinsert_ipath";

   procedure ddsrt_avl_cdelete_dpath
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      node : System.Address;
      path : access ddsrt_avl_dpath_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cdelete_dpath";

   procedure ddsrt_avl_cswap_node
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      oldn : System.Address;
      newn : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cswap_node";

   procedure ddsrt_avl_caugment_update (td : access constant ddsrt_avl_ctreedef_t; node : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_caugment_update";

   function ddsrt_avl_cis_empty (tree : access constant ddsrt_avl_ctree_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cis_empty";

   function ddsrt_avl_cis_singleton (tree : access constant ddsrt_avl_ctree_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cis_singleton";

   function ddsrt_avl_ccount (tree : access constant ddsrt_avl_ctree_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_ccount";

   function ddsrt_avl_cfind_min (td : access constant ddsrt_avl_ctreedef_t; tree : access constant ddsrt_avl_ctree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cfind_min";

   function ddsrt_avl_cfind_max (td : access constant ddsrt_avl_ctreedef_t; tree : access constant ddsrt_avl_ctree_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cfind_max";

   function ddsrt_avl_cfind_pred
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      vnode : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cfind_pred";

   function ddsrt_avl_cfind_succ
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      vnode : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cfind_succ";

   procedure ddsrt_avl_cwalk
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      f : ddsrt_avl_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cwalk";

   procedure ddsrt_avl_cconst_walk
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      f : ddsrt_avl_const_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cconst_walk";

   procedure ddsrt_avl_cwalk_range
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cwalk_range";

   procedure ddsrt_avl_cconst_walk_range
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_const_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:346
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cconst_walk_range";

   procedure ddsrt_avl_cwalk_range_reverse
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cwalk_range_reverse";

   procedure ddsrt_avl_cconst_walk_range_reverse
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      min : System.Address;
      max : System.Address;
      f : ddsrt_avl_const_walk_t;
      a : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_cconst_walk_range_reverse";

   function ddsrt_avl_citer_first
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      iter : access ddsrt_avl_citer_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_citer_first";

   function ddsrt_avl_citer_succ_eq
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      iter : access ddsrt_avl_citer_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_citer_succ_eq";

   function ddsrt_avl_citer_succ
     (td : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      iter : access ddsrt_avl_citer_t;
      key : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_citer_succ";

   function ddsrt_avl_citer_next (iter : access ddsrt_avl_citer_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/avl.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_avl_citer_next";

end CycloneDDS.Low_Level.dds_ddsrt_avl_h;
