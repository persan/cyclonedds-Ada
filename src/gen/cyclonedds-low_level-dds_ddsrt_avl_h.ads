pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package CycloneDDS.Low_Level.dds_ddsrt_avl_h is

   --  unsupported macro: DDSRT_AVL_MAX_TREEHEIGHT (12 * sizeof (void *))
   DDSRT_AVL_TREEDEF_FLAG_INDKEY : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/avl.h:185
   DDSRT_AVL_TREEDEF_FLAG_R : constant :=
     2;  --  /usr/gnat/include/dds/ddsrt/avl.h:186
   DDSRT_AVL_TREEDEF_FLAG_ALLOWDUPS : constant :=
     4;  --  /usr/gnat/include/dds/ddsrt/avl.h:187
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

   -- The tree library never performs memory allocations or deallocations internally.
   --   - Treedef_t: defines the properties of the tree, offsets,
   --     comparison functions, augmented structures, flags -- these are
   --     related to the code/data structure in which the tree is embedded,
   --     and in nearly all cases known at compile time.
   --   - avlTree_t: represents the tree, i.e., pointer to the root.
   --   - avlNode_t: contains the administrative data for a single node in
   --     the tree.
   --   For a tree node:
   --     struct T {
   --       avlNode_t avlnode;
   --       int key;
   --     };
   --   by definition, avlnodeoffset == offsetof(struct T, avlnode) and
   --   keyoffset = offsetof(struct T, key). The user of the library only
   --   ever deals in pointers to (in this case) struct T, never with
   --   pointers to the avlNode_t, and the compare function operations on
   --   pointers to keys, in this case pointers to "int"s. If you wish, you
   --   can also do: keyoffset = 0, in which case the compare function
   --   would be operating on struct T's.
   --   The compare function is assumed to behave just like all compare
   --   functions in the C library: < 0, =0, >0 for left argument less
   --   than, equal to or greater than the right argument.
   --   The "augment" function is automatically called whenever some of the
   --   children of a node change, as well as when the "augment" function
   --   has been called on some of the children. It allows you to maintain
   --   a "summary" of the subtree -- currently only used in ddsi2e, in one
   --   spot.
   --   Trees come in various "variants", configured through "treedef"
   --   flags:
   --   - direct/indirect key: direct meaning the key value is embedded in
   --     the structure containing the avlNode_t, indirect meaning a
   --     pointer to the key value is. The compare function doesn't deal
   --     with tree nodes, but with key values.
   --   - re-entrant: in the style of the C library, meaning, the
   --     comparison function gets a user-supplied 3rd argument (in
   --     particular used by mmstat).
   --   - unique keys/duplicate keys: when keys must be unique, some
   --     optimizations apply; it is up to the caller to ensure one doesn't
   --     violate the uniqueness of the keys (it'll happily crash in insert
   --     if you don't); when duplicate keys are allowed, a forward scan of
   --     the tree will visit them in the order of insertion.
   --   For a tree node:
   --     struct T {
   --       avlnode_t avlnode;
   --      char *key;
   --     };
   --   you could set the "indirect" flag, and then you simply use
   --   strcmp(), avoiding the need for passing templates in looking up key
   --   values. Much nicer.
   --   There is also an orthogonal variant that is enforced through the
   --   type system -- note that would be possible for all of the above as
   --   well, but the number of cases simply explodes and none of the above
   --   flags affects the dynamically changing data structures (just the
   --   tree definition), unlike this one.
   --   - the "C" variant keeps track of the number of nodes in the tree to
   --     support a "count" operation in O(1) time, but is otherwise
   --     identical.
   --   The various initializer macros and TreedefInit functions should
   --   make sense with this.
   --   All functions for looking up nodes return NULL if there is no node
   --   satisfying the requirements.
--   - Init: initializes a tree (really just: root = NULL, perhaps count = 0)
   --   - Free: calls "freefun" on each node, which may free the node
   --   - FreeArg: as "Free", but with an extra, user-supplied, argument
   --   - Root: returns the root node
   --   - Lookup: returns a node with key value "key" (ref allowdups flag)
   --   - LookupIPath: like Lookup, but also filling an IPath_t structure
   --     for efficient insertion in case of a failed lookup (or inserting
   --     duplicates)
   --   - LookupDPath: like Lookup, but also filling a DPath_t structure
   --     that helps with deleting a node
   --   - LookupPredEq: locates the node with the greatest key value <= "key"
   --   - LookupSuccEq: similar, but smallest key value >= "key"
   --   - LookupPred: similar, < "key"
   --   - LookupSucc: similar, > "key"
   --   - Insert: convenience function: LookupIPath ; InsertIPath
   --   - Delete: convenience function: LookupDPath ; DeleteDPath
--   - InsertIPath: insert node based on the "path" obtained from LookupIPath
   --   - DeleteDPath: delete node, using information in "path" to do so efficiently
   --   - SwapNode: replace "oldn" by "newn" without modifying the tree
   --     structure (the key need not be equal, but must be
   --     FindPred(oldn).key < newn.key < FindSucc(oldn).key, where a
   --     non-existing predecessor has key -inf and a non-existing
   --     successor has key +inf, and where it is understood that the <
   --     operator becomes <= if allowdups is set
   --   - AugmentUpdate: to be called when something in "node" changes that
   --     affects the subtree "summary" computed by the configured
   --     "augment" function
   --   - IsEmpty: returns 1 if tree is empty, 0 if not
   --   - IsSingleton: returns 1 if tree contains exactly one node, 0 if not
   --   - FindMin: returns the node with the smallest key value in the tree
   --   - FindMax: similar, largest key value
   --   - FindPred: preceding node in in-order treewalk
   --   - FindSucc: similar, following node
   --   - Walk: calls "f" with user-supplied argument "a" once for each
   --     node, starting at FindMin and ending at FindMax
   --   - ConstWalk: same, but with a const tree
   --   - WalkRange: like Walk, but only visiting nodes with key values in
   --     range [min,max] (that's inclusive)
   --   - ConstWalkRange: same, but with a const tree
   --   - WalkRangeReverse: like WalkRange, but in the reverse direction
   --   - ConstWalkRangeReverse: same, but with a const tree
--   - IterFirst: starts forward iteration, starting at (and returning) FindMin
   --   - IterSuccEq: similar, starting at LookupSuccEq
   --   - IterSucc: similar, starting at LookupSucc
   --   - IterNext: returns FindSucc(last returned node); may not be called
   --     if preceding IterXXX call on same "iter" returned NULL
   --   That's all there is to it.
   --   Note that all calls to Walk(f,a) can be rewritten as:
   --     for(n=IterFirst(&it); n; n=IterNext(&it)) { f(n,a) }
   --   or as
   --     for(n=FindMin(); n; n=FindSucc(n)) { f(n,a) }
   --   The walk functions and iterators may not alter the tree
   --   structure. If that is desired, the latter can easily be rewritten
   --   as:
   --     n=FindMin() ; while(n) { nn=FindSucc(n); f(n,a); n=nn }
   --   because FindMin/FindSucc doesn't store any information to allow
   --   fast processing. That'll allow every operation, with the obvious
   --   exception of f(n) calling Delete(FindSucc(n)).
   --   Currently, all trees maintain parent pointers, but it may be worth
   --   doing a separate set without it, as it reduces the size of
   --   avlNode_t. But in that case, the FindMin/FindSucc option would no
   --   longer be a reasonable option because it would be prohibitively
   --   expensive, whereas the IterFirst/IterNext option are alway
   --   efficiently. If one were to do a threaded tree variant, the
   --   implemetantion of IterFirst/IterNext would become absolute trivial
   --   and faster still, but at the cost of significantly more overhead in
   --   memory and updates.

   type ddsrt_avl_compare_t is access function
     (arg1 : System.Address; arg2 : System.Address) return int with
      Convention => C;

   type ddsrt_avl_compare_r_t is access function
     (arg1 : System.Address; arg2 : System.Address; arg3 : System.Address)
      return int with
      Convention => C;

   type ddsrt_avl_augment_t is access procedure
     (arg1 : System.Address; arg2 : System.Address; arg3 : System.Address) with
      Convention => C;

   type ddsrt_avl_walk_t is access procedure
     (arg1 : System.Address; arg2 : System.Address) with
      Convention => C;

   type ddsrt_avl_const_walk_t is access procedure
     (arg1 : System.Address; arg2 : System.Address) with
      Convention => C;

      -- 0 = left, 1 = right
      --  <>type ddsrt_avl_node;
   type ddsrt_avl_node_t;
   type anon3446_array3448 is array (0 .. 1) of access ddsrt_avl_node_t;
   type ddsrt_avl_node_t is record
      cs     : anon3446_array3448;
      parent : access ddsrt_avl_node_t;
      height : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_node_t is ddsrt_avl_node;

   type anon3450_union3451 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            comparekk : ddsrt_avl_compare_t;
         when others =>
            comparekk_r : ddsrt_avl_compare_r_t;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type ddsrt_avl_treedef_t is record
      avlnodeoffset : aliased unsigned_long;
      keyoffset     : aliased unsigned_long;
      u             : aliased anon3450_union3451;
      augment       : ddsrt_avl_augment_t;
      flags         : aliased unsigned;
      cmp_arg       : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      -- for _r variant
      --  <>subtype ddsrt_avl_treedef_t is ddsrt_avl_treedef;

   type ddsrt_avl_ctreedef_t is record
      t : aliased ddsrt_avl_treedef_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_ctreedef_t is ddsrt_avl_ctreedef;

   type ddsrt_avl_tree_t is record
      root : access ddsrt_avl_node_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_tree_t is ddsrt_avl_tree;

   type ddsrt_avl_ctree_t is record
      t     : aliased ddsrt_avl_tree_t;
      count : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_ctree_t is ddsrt_avl_ctree;

      -- total depth of path
   type anon3460_array3464 is array (0 .. 95) of System.Address;
   type ddsrt_avl_path_t is record
      depth    : aliased int;
      pnodeidx : aliased int;
      parent   : access ddsrt_avl_node_t;
      pnode    : anon3460_array3464;
   end record with
      Convention => C_Pass_By_Copy;

      -- (nodeidx == 0 ? NULL : *(path[nodeidx-1]))
      --  <>subtype ddsrt_avl_path_t is ddsrt_avl_path;

   type ddsrt_avl_ipath_t is record
      p : aliased ddsrt_avl_path_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_ipath_t is ddsrt_avl_ipath;

   type ddsrt_avl_dpath_t is record
      p : aliased ddsrt_avl_path_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_dpath_t is ddsrt_avl_dpath;

   type anon3471_array3477 is array (0 .. 96) of access ddsrt_avl_node_t;
   type ddsrt_avl_iter_t is record
      td    : access constant ddsrt_avl_treedef_t;
      right : access ddsrt_avl_node_t;
      todop : System.Address;
      todo  : anon3471_array3477;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_iter_t is ddsrt_avl_iter;

   type ddsrt_avl_citer_t is record
      t : aliased ddsrt_avl_iter_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_avl_citer_t is ddsrt_avl_citer;

      -- avlnodeoffset and keyoffset must both be in [0,2**31-1]
      -- Not maintaining # nodes
   procedure ddsrt_avl_treedef_init
     (td        : access ddsrt_avl_treedef_t; avlnodeoffset : unsigned_long;
      keyoffset : unsigned_long; comparekk : ddsrt_avl_compare_t;
      augment   : ddsrt_avl_augment_t; flags : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_treedef_init";

   procedure ddsrt_avl_treedef_init_r
     (td        : access ddsrt_avl_treedef_t; avlnodeoffset : unsigned_long;
      keyoffset : unsigned_long; comparekk_r : ddsrt_avl_compare_r_t;
      cmp_arg   : System.Address; augment : ddsrt_avl_augment_t;
      flags     : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_treedef_init_r";

   procedure ddsrt_avl_init
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access ddsrt_avl_tree_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_init";

   procedure ddsrt_avl_free
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      freefun : access procedure (arg1 : System.Address)) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_free";

   procedure ddsrt_avl_free_arg
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      freefun : access procedure
        (arg1 : System.Address; arg2 : System.Address);
      arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_free_arg";

   function ddsrt_avl_root
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_root";

   function ddsrt_avl_root_non_empty
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_root_non_empty";

   function ddsrt_avl_lookup
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup";

   function ddsrt_avl_lookup_ipath
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address;
      path : access ddsrt_avl_ipath_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup_ipath";

   function ddsrt_avl_lookup_dpath
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address;
      path : access ddsrt_avl_dpath_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup_dpath";

   function ddsrt_avl_lookup_pred_eq
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup_pred_eq";

   function ddsrt_avl_lookup_succ_eq
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup_succ_eq";

   function ddsrt_avl_lookup_pred
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup_pred";

   function ddsrt_avl_lookup_succ
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_lookup_succ";

   procedure ddsrt_avl_insert
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      node : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_insert";

   procedure ddsrt_avl_delete
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      node : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_delete";

   procedure ddsrt_avl_insert_ipath
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      node : System.Address; path : access ddsrt_avl_ipath_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_insert_ipath";

   procedure ddsrt_avl_delete_dpath
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      node : System.Address; path : access ddsrt_avl_dpath_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_delete_dpath";

   procedure ddsrt_avl_swap_node
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      oldn : System.Address; newn : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_swap_node";

   procedure ddsrt_avl_augment_update
     (td : access constant ddsrt_avl_treedef_t; node : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_augment_update";

   function ddsrt_avl_is_empty
     (tree : access constant ddsrt_avl_tree_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_is_empty";

   function ddsrt_avl_is_singleton
     (tree : access constant ddsrt_avl_tree_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_is_singleton";

   function ddsrt_avl_find_min
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_find_min";

   function ddsrt_avl_find_max
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_find_max";

   function ddsrt_avl_find_pred
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; vnode : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_find_pred";

   function ddsrt_avl_find_succ
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; vnode : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_find_succ";

   procedure ddsrt_avl_walk
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      f  : ddsrt_avl_walk_t; a : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_walk";

   procedure ddsrt_avl_const_walk
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; f : ddsrt_avl_const_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_const_walk";

   procedure ddsrt_avl_walk_range
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      min : System.Address; max : System.Address; f : ddsrt_avl_walk_t;
      a   : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_walk_range";

   procedure ddsrt_avl_const_walk_range
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; min : System.Address;
      max  : System.Address; f : ddsrt_avl_const_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_const_walk_range";

   procedure ddsrt_avl_walk_range_reverse
     (td : access constant ddsrt_avl_treedef_t; tree : access ddsrt_avl_tree_t;
      min : System.Address; max : System.Address; f : ddsrt_avl_walk_t;
      a   : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_walk_range_reverse";

   procedure ddsrt_avl_const_walk_range_reverse
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; min : System.Address;
      max  : System.Address; f : ddsrt_avl_const_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_const_walk_range_reverse";

   function ddsrt_avl_iter_first
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; iter : access ddsrt_avl_iter_t)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_iter_first";

   function ddsrt_avl_iter_succ_eq
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; iter : access ddsrt_avl_iter_t;
      key  : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_iter_succ_eq";

   function ddsrt_avl_iter_succ
     (td   : access constant ddsrt_avl_treedef_t;
      tree : access constant ddsrt_avl_tree_t; iter : access ddsrt_avl_iter_t;
      key  : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_iter_succ";

   function ddsrt_avl_iter_next
     (iter : access ddsrt_avl_iter_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_iter_next";

      -- Maintaining # nodes
   procedure ddsrt_avl_ctreedef_init
     (td        : access ddsrt_avl_ctreedef_t; avlnodeoffset : unsigned_long;
      keyoffset : unsigned_long; comparekk : ddsrt_avl_compare_t;
      augment   : ddsrt_avl_augment_t; flags : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_ctreedef_init";

   procedure ddsrt_avl_ctreedef_init_r
     (td        : access ddsrt_avl_ctreedef_t; avlnodeoffset : unsigned_long;
      keyoffset : unsigned_long; comparekk_r : ddsrt_avl_compare_r_t;
      cmp_arg   : System.Address; augment : ddsrt_avl_augment_t;
      flags     : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_ctreedef_init_r";

   procedure ddsrt_avl_cinit
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cinit";

   procedure ddsrt_avl_cfree
     (td      : access constant ddsrt_avl_ctreedef_t;
      tree    : access ddsrt_avl_ctree_t;
      freefun : access procedure (arg1 : System.Address)) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cfree";

   procedure ddsrt_avl_cfree_arg
     (td      : access constant ddsrt_avl_ctreedef_t;
      tree    : access ddsrt_avl_ctree_t;
      freefun : access procedure
        (arg1 : System.Address; arg2 : System.Address);
      arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cfree_arg";

   function ddsrt_avl_croot
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_croot";

   function ddsrt_avl_croot_non_empty
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_croot_non_empty";

   function ddsrt_avl_clookup
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup";

   function ddsrt_avl_clookup_ipath
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address;
      path : access ddsrt_avl_ipath_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup_ipath";

   function ddsrt_avl_clookup_dpath
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address;
      path : access ddsrt_avl_dpath_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup_dpath";

   function ddsrt_avl_clookup_pred_eq
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup_pred_eq";

   function ddsrt_avl_clookup_succ_eq
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup_succ_eq";

   function ddsrt_avl_clookup_pred
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup_pred";

   function ddsrt_avl_clookup_succ
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_clookup_succ";

   procedure ddsrt_avl_cinsert
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; node : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cinsert";

   procedure ddsrt_avl_cdelete
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; node : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cdelete";

   procedure ddsrt_avl_cinsert_ipath
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; node : System.Address;
      path : access ddsrt_avl_ipath_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cinsert_ipath";

   procedure ddsrt_avl_cdelete_dpath
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; node : System.Address;
      path : access ddsrt_avl_dpath_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cdelete_dpath";

   procedure ddsrt_avl_cswap_node
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; oldn : System.Address;
      newn : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cswap_node";

   procedure ddsrt_avl_caugment_update
     (td : access constant ddsrt_avl_ctreedef_t; node : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_caugment_update";

   function ddsrt_avl_cis_empty
     (tree : access constant ddsrt_avl_ctree_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cis_empty";

   function ddsrt_avl_cis_singleton
     (tree : access constant ddsrt_avl_ctree_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cis_singleton";

   function ddsrt_avl_ccount
     (tree : access constant ddsrt_avl_ctree_t) return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_ccount";

   function ddsrt_avl_cfind_min
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cfind_min";

   function ddsrt_avl_cfind_max
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cfind_max";

   function ddsrt_avl_cfind_pred
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; vnode : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cfind_pred";

   function ddsrt_avl_cfind_succ
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; vnode : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cfind_succ";

   procedure ddsrt_avl_cwalk
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; f : ddsrt_avl_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cwalk";

   procedure ddsrt_avl_cconst_walk
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; f : ddsrt_avl_const_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cconst_walk";

   procedure ddsrt_avl_cwalk_range
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; min : System.Address;
      max  : System.Address; f : ddsrt_avl_walk_t; a : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cwalk_range";

   procedure ddsrt_avl_cconst_walk_range
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; min : System.Address;
      max  : System.Address; f : ddsrt_avl_const_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cconst_walk_range";

   procedure ddsrt_avl_cwalk_range_reverse
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access ddsrt_avl_ctree_t; min : System.Address;
      max  : System.Address; f : ddsrt_avl_walk_t; a : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cwalk_range_reverse";

   procedure ddsrt_avl_cconst_walk_range_reverse
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t; min : System.Address;
      max  : System.Address; f : ddsrt_avl_const_walk_t;
      a    : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_cconst_walk_range_reverse";

   function ddsrt_avl_citer_first
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      iter : access ddsrt_avl_citer_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_citer_first";

   function ddsrt_avl_citer_succ_eq
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      iter : access ddsrt_avl_citer_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_citer_succ_eq";

   function ddsrt_avl_citer_succ
     (td   : access constant ddsrt_avl_ctreedef_t;
      tree : access constant ddsrt_avl_ctree_t;
      iter : access ddsrt_avl_citer_t; key : System.Address)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_citer_succ";

   function ddsrt_avl_citer_next
     (iter : access ddsrt_avl_citer_t) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_avl_citer_next";

end CycloneDDS.Low_Level.dds_ddsrt_avl_h;
