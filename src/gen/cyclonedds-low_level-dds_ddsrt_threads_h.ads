pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

with CycloneDDS.Low_Level.dds_ddsrt_sched_h;

with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsrt_threads_h is

   --  unsupported macro: ddsrt_thread_local __thread
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
   -- * @file threads.h
   -- * @brief Thread management and creation.
   -- *
   -- * Platform independent interface for managing and creating execution threads.
   --

   -- Thread-local storage using __declspec(thread) on Windows versions before
--     Vista and Server 2008 works in DLLs if they are bound to the executable,
   --     it does not work if the library is loaded using LoadLibrary.

   -- GCC supports Thread-local storage for x86 since version 3.3. Clang
   --     supports Thread-local storage since version 2.0.

   -- VxWorks 7 supports __thread for both GCC and DIAB, older versions may
   --     support it as well, but that is not verified.

   --*
   -- * @brief Definition for a thread routine invoked on thread create.
   --

   type ddsrt_thread_routine_t is access function
     (arg1 : System.Address) return unsigned with
      Convention => C;

      --*
      -- * @brief Definition of the thread attributes
      --

      --* Specifies the scheduling class
      --* Specifies the thread priority
      --* Specifies the thread stack size
   type ddsrt_threadattr_t is record
      schedClass : aliased CycloneDDS.Low_Level.dds_ddsrt_sched_h
        .ddsrt_sched_t;
      schedPriority : aliased int;
      stackSize     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --*
      -- * @brief Initialize thread attributes to platform defaults.
      --

   procedure ddsrt_threadattr_init (attr : access ddsrt_threadattr_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_threadattr_init";

      --*
   -- * @brief Create a new thread.
   -- *
   -- * Creates a new thread of control that executes concurrently with
   -- * the calling thread. The new thread applies the function start_routine
   -- * passing it arg as first argument.
   -- *
   -- * The new thread terminates by returning from the start_routine function.
   -- * The created thread is identified by the returned threadId.
   -- *
   -- * @param[out]  thread         Location where thread id is stored.
   -- * @param[in]   name           Name assigned to created thread.
   -- * @param[in]   attr           Attributes to create thread with.
   -- * @param[in]   start_routine  Function to execute in created thread.
   -- * @param[in]   arg            Argument passed to @start_routine.
   -- *
   -- * @returns A dds_return_t indicating success or failure.
   -- *
   -- * @retval DDS_RETCODE_OK
   -- *             Thread successfully created.
   -- * @retval DDS_RETCODE_ERROR
   -- *             Thread could not be created.
      --

   function ddsrt_thread_create
     (thread : access CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h
        .ddsrt_thread_t;
      name          : Interfaces.C.Strings.chars_ptr;
      attr          : access constant ddsrt_threadattr_t;
      start_routine : ddsrt_thread_routine_t; arg : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_create";

      --*
      -- * @brief Retrieve integer representation of the given thread id.
      -- *
      -- * @returns The integer representation of the current thread.
      --

   function ddsrt_gettid
      return CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_tid_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_gettid";

      --*
      -- * @brief Retrieve integer representation of the given thread id.
      -- *
      -- * @returns The integer representation of the given thread.
      --

   function ddsrt_gettid_for_thread
     (thread : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t)
      return CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_tid_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_gettid_for_thread";

      --*
      -- * @brief Return thread ID of the calling thread.
      -- *
      -- * @returns Thread ID of the calling thread.
      --

   function ddsrt_thread_self
      return CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_self";

      --*
      -- * @brief Compare thread identifiers.
      -- *
      -- * @returns true if thread ids match, otherwise false.
      --

   function ddsrt_thread_equal
     (t1 : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t;
      t2 : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_equal";

      --*
-- * @brief Wait for termination of the specified thread.
-- *
-- * If the specified thread is still running, wait for its termination
-- * else return immediately. In thread_result it returns the exit status
-- * of the thread. If NULL is passed for @thread_result, no exit status is
-- * returned, but ddsrt_thread_join still waits for the thread to terminate.
-- *
-- * @param[in]   thread         Id of thread to wait for.
-- * @param[out]  thread_result  Location where thread result is stored.
-- *
-- * @returns A dds_return_t indicating success or failure.
-- *
-- * @retval DDS_RETCODE_OK
-- *             Target thread terminated.
-- * @retval DDS_RETCODE_ERROR
-- *             An error occurred while waiting for the thread to terminate.
      --

   function ddsrt_thread_join
     (thread : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t;
      thread_result : access unsigned)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_join";

      --*
-- * @brief Get name of current thread.
-- *
-- * @param[in]  name  Buffer where the name is copied to.
-- * @param[in]  size  Number of bytes available in the buffer.
-- *
-- * @returns The number of bytes (excluding the null terminating bytes) that
-- *          are written. If the buffer is not sufficiently large enough, the
-- *          name is truncated and the number of bytes that would have been
-- *          written is returned.
      --

   function ddsrt_thread_getname
     (name : Interfaces.C.Strings.chars_ptr; size : unsigned_long)
      return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_getname";

      --*
   -- * @brief Set name of current thread.
   -- *
   -- * Set name of the current thread to @name. If the name is longer than the
   -- * platform maximum, it is silently truncated.
   -- *
   -- * @param[in]  name  Name for current thread.
      --

   procedure ddsrt_thread_setname (name : Interfaces.C.Strings.chars_ptr) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_setname";

      --*
   -- * @brief Get a list of threads in the calling process
   -- *
   -- * @param[out]  tids    Array of size elements to be filled with thread
   -- *                      identifiers, may be NULL if size is 0
   -- * @param[in]   size    The size of the tids array; 0 is allowed
   -- *
   -- * @returns A dds_return_t indicating the number of threads in the process
   -- * or an error code on failure.
   -- *
   -- * @retval > 0
   -- *             Number of threads in the process, may be larger than size
   -- *             tids[0 .. (return - 1)] are valid
   -- * @retval DDS_RETCODE_ERROR
   -- *             Something went wrong, contents of tids is undefined
   -- * @retval DDS_RETCODE_UNSUPPORTED
   -- *             Not supported on the platform
      --

   function ddsrt_thread_list
     (tids : access CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h
        .ddsrt_thread_list_id_t;
      size : unsigned_long)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_list";

      --*
   -- * @brief Get the name of the specified thread (in the calling process)
   -- *
   -- * @param[in]   tid     Thread identifier for which the name is sought
   -- * @param[out]  name    Filled with the thread name (or a synthesized one)
   -- *                      on successful return; name is silently truncated
   -- *                      if the actual name is longer than name can hold;
   -- *                      always 0-terminated if size > 0
   -- * @param[in]   size    Number of bytes of name that may be assigned, size
   -- *                      is 0 is allowed, though somewhat useless
   -- *
   -- * @returns A dds_return_t indicating success or failure.
   -- *
   -- * @retval DDS_RETCODE_OK
   -- *             Possibly truncated name is returned as a null-terminated
   -- *             string in name (provided size > 0).
   -- * @retval DDS_RETCODE_NOT_FOUND
   -- *             Thread not found; the contents of name is unchanged
   -- * @retval DDS_RETCODE_ERROR
   -- *             Unspecified failure, the contents of name is undefined
   -- * @retval DDS_RETCODE_UNSUPPORTED
   -- *             Not supported on the platform
      --

   function ddsrt_thread_getname_anythread
     (tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h
        .ddsrt_thread_list_id_t;
      name : Interfaces.C.Strings.chars_ptr; size : unsigned_long)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_getname_anythread";

      --*
      -- * @brief Push cleanup handler onto the cleanup stack
      -- *
      -- * Push a cleanup handler onto the top of the calling thread's cleanup
      -- * stack. The cleanup handler will be popped of the thread's cleanup stack
      -- * and invoked with the specified argument when the thread exits.
      -- *
      -- * @param[in]  routine  Cleanup handler to push onto the thread cleanup stack.
      -- * @param[in]  arg      Argument that will be passed to the cleanup handler.
      --

   function ddsrt_thread_cleanup_push
     (routine : access procedure (arg1 : System.Address); arg : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_cleanup_push";

      --*
      -- * @brief Pop cleanup handler from the top of the cleanup stack
      -- *
      -- * Remove routine at the top of the calling thread's cleanup stack and
      -- * optionally invoke it (if execute is non-zero).
      --

   function ddsrt_thread_cleanup_pop
     (execute : int)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_cleanup_pop";

      --*
-- * @brief Initialize thread internals.
-- *
-- * Initialize internals for threads not created with @ddsrt_create_thread. By
-- * default initialization is done automatically.
      --

   procedure ddsrt_thread_init (reason : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_init";

      --*
      -- * @brief Free thread resources and execute cleanup handlers.
      -- *
      -- * Platforms that support it, automatically free resources claimed by the
      -- * current thread and call any registered cleanup routines. This function only
      -- * needs to be called on platforms that do not support thread destructors and
      -- * only for threads that were not created with @ddsrt_thread_create.
      --

   procedure ddsrt_thread_fini (reason : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_thread_fini";

end CycloneDDS.Low_Level.dds_ddsrt_threads_h;
