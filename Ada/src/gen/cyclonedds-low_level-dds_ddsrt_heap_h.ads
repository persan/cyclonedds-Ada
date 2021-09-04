pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;

package CycloneDDS.Low_Level.dds_ddsrt_heap_h is

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

  --*
  -- * @file heap.h
  -- * @brief Heap memory management.
  -- *
  -- * Platform independent interface to heap memory management.
  --  

  --*
  -- * @brief Allocate memory from heap.
  -- *
  -- * The allocated block of memory must be freed by calling @ddsrt_free when no
  -- * longer used.
  -- *
  -- * @param[in]  size  The size, in bytes, of the block of memory to allocate.
  -- *
  -- * @returns A pointer to the allocated block of memory. abort() is called if
  -- *          not enough free memory was available.
  --  

   function ddsrt_malloc (size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/heap.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_malloc";

  --*
  -- * @brief Allocate memory from heap.
  -- *
  -- * Allocate a block of memory from heap with the given size. The allocated
  -- * block of memory must be freed by calling @ddsrt_free when no longer used.
  -- *
  -- * @param[in]  size  The size, in bytes, of memory to allocate.
  -- *
  -- * @returns A pointer to the allocated block of memory, NULL if not enough
  -- *          memory was available.
  --  

   function ddsrt_malloc_s (size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/heap.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_malloc_s";

  --*
  -- * @brief Allocate memory from heap for an array of @count elements of @size
  -- *        bytes.
  -- *
  -- * The allocated memory is initialized to zero. The allocated memory must be
  -- * freed by calling @ddsrt_free when no longer used.
  -- *
  -- * A non-NULL pointer, that must be freed is always returned, even if the sum
  -- * @count and @size equals zero.
  -- *
  -- * @returns A pointer to the allocated memory. abort() is called if not enough
  -- *          free memory was available.
  --  

   function ddsrt_calloc (count : unsigned_long; size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/heap.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_calloc";

  --*
  -- * @brief Allocate memory from heap for an array of @count elements of @size
  -- *        bytes.
  -- *
  -- * The allocated memory is initialized to zero. The allocated memory must be
  -- * freed by calling @ddsrt_free when no longer used.
  -- *
  -- * A non-NULL pointer, that must be freed is always returned, even if the sum
  -- * @count and @size equals zero.
  -- *
  -- * @returns A pointer to the allocated memory, or NULL if not enough memory was
  -- *          available.
  --  

   function ddsrt_calloc_s (count : unsigned_long; size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/heap.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_calloc_s";

  --*
  -- * @brief Reallocate memory from heap.
  -- *
  -- * Reallocate memory from heap. If memblk is NULL the function returns
  -- * ddsrt_malloc_s(size). If size is 0, ddsrt_realloc_s free's the memory
  -- * pointed to by memblk and returns a pointer as if ddsrt_malloc_s(0) was
  -- * invoked. The returned pointer must be free'd with ddsrt_free.
  -- *
  -- * @returns A pointer to reallocated memory. Calls abort() if not enough free
  -- *          memory was available.
  --  

   function ddsrt_realloc (memblk : System.Address; size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/heap.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_realloc";

  --*
  -- * @brief Reallocate memory from heap.
  -- *
  -- * Reallocate memory from heap. If memblk is NULL the function returns
  -- * ddsrt_malloc_s(size). If size is 0, ddsrt_realloc_s free's the memory
  -- * pointed to by memblk and returns a pointer as if ddsrt_malloc_s(0) was
  -- * invoked. The returned pointer must be free'd with ddsrt_free.
  -- *
  -- * @returns A pointer to reallocated memory, or NULL if not enough free memory
  -- *          was available.
  --  

   function ddsrt_realloc_s (memblk : System.Address; size : unsigned_long) return System.Address  -- /usr/gnat/include/dds/ddsrt/heap.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_realloc_s";

  --*
  -- * @brief Free a previously allocated block of memory and return it to heap.
  -- *
  -- * Free the allocated memory pointed to by @ptr and release it to the heap. No
  -- * action will be taken if @ptr is NULL.
  -- *
  -- * @param[in]  ptr  Pointer to previously allocated block of memory.
  --  

   procedure ddsrt_free (ptr : System.Address)  -- /usr/gnat/include/dds/ddsrt/heap.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_free";

end CycloneDDS.Low_Level.dds_ddsrt_heap_h;
