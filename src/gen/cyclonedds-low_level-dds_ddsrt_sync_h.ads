pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsrt_sync_h is

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
   -- * @brief Initialize a mutex.
   -- *
   -- * @param[in]  mutex  Mutex to itialize.
   --

   procedure ddsrt_mutex_init
     (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mutex_init";

      --*
      -- * @brief Destroy a mutex.
      -- *
      -- * @param[in]  mutex  Mutex to destroy.
      --

   procedure ddsrt_mutex_destroy
     (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mutex_destroy";

      --*
      -- * @brief Acquire a mutex.
      -- *
      -- * @param[in]  mutex  Mutex to acquire.
      --

   procedure ddsrt_mutex_lock
     (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mutex_lock";

      --*
      -- * @brief Acquire a mutex if it is not already acquired.
      -- *
      -- * @param[in]  mutex  Mutex to acquire.
      -- *
      -- * @returns true if the mutex was acquired, false otherwise.
      --

   function ddsrt_mutex_trylock
     (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mutex_trylock";

      --*
      -- * @brief Release an acquired mutex.
      -- *
      -- * @param[in]  mutex  Mutex to release.
      --

   procedure ddsrt_mutex_unlock
     (mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mutex_unlock";

      --*
      -- * @brief Initialize a condition variable.
      -- *
      -- * @param[in]  cond  Condition variable to initialize.
      --

   procedure ddsrt_cond_init
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_init";

      --*
      -- * @brief Destroy a condition variable.
      -- *
      -- * @param[in]  cond  Condition variable to destroy.
      --

   procedure ddsrt_cond_destroy
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_destroy";

      --*
      -- * @brief Wait for a condition variable to be signalled.
      -- *
      -- * @param[in]  cond   Condition variable to block on.
      -- * @param[in]  mutex  Mutex to associate with condition variable.
      -- *
      -- * @pre The calling thread must hold the mutex specified by @mutex.
      -- *
      -- * @post The calling thread will hold the mutex specified by @mutex.
      --

   procedure ddsrt_cond_wait
     (cond  : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;
      mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_wait";

      --*
   -- * @brief Wait until @abstime for a condition variable to be signalled.
   -- *
   -- * @param[in]  cond     Condition variable to block on.
   -- * @param[in]  mutex    Mutex to associate with condition variable.
   -- * @param[in]  abstime  Time in nanoseconds since UNIX Epoch.
   -- *
   -- * @pre The calling thread must hold the mutex specified by @mutex.
   -- *
   -- * @post The calling thread will hold the mutex specified by @mutex.
   -- *
   -- * @returns false if the condition variable was not signalled before the
   -- *          absolute time specified by @abstime passed, otherwise true.
      --

   function ddsrt_cond_waituntil
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;
      mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      abstime : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_waituntil";

      --*
   -- * @brief Wait for @reltime for a condition variable to be signalled.
   -- *
   -- * @param[in]  cond     Condition variable to block on.
   -- * @param[in]  mutex    Mutex to associate with condition variable.
   -- * @param[in]  reltime  Time in nanoseconds since UNIX Epoch.
   -- *
   -- * @pre The calling thread must hold the mutex specified by @mutex.
   -- *
   -- * @post The calling thread will hold the mutex specified by @mutex.
   -- *
   -- * @returns false if the condition variable was not signalled before the
   -- *          relative time specified by @reltime passed, otherwise true.
      --

   function ddsrt_cond_waitfor
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;
      mutex : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      reltime : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_waitfor";

      --*
-- * @brief Signal a condition variable and unblock at least one thread.
-- *
-- * @param[in]  cond  Condition variable to signal.
-- *
-- * @pre The mutex associated with the condition in general should be acquired
-- *      by the calling thread before setting the condition state and
-- *      signalling.
      --

   procedure ddsrt_cond_signal
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_signal";

      --*
-- * @brief Signal a condition variable and unblock all threads.
-- *
-- * @param[in]  cond  Condition variable to signal.
-- *
-- * @pre The mutex associated with the condition in general should be acquired
-- *      by the calling thread before setting the condition state and
-- *      signalling
      --

   procedure ddsrt_cond_broadcast
     (cond : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_cond_broadcast";

      --*
      -- * @brief Initialize a read-write lock.
      -- *
      -- * @param[in]  rwlock  Read-write lock to initialize.
      --

   procedure ddsrt_rwlock_init
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_init";

      --*
      -- * @brief Destroy a read-write lock.
      -- *
      -- * @param[in]  rwlock  Read-write lock to destroy.
      --

   procedure ddsrt_rwlock_destroy
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_destroy";

      --*
   -- * @brief Acquire a read-write lock for reading.
   -- *
   -- * @param[in]  rwlock  Read-write lock to acquire.
   -- *
   -- * @post Data related to the critical section must not be changed by the
   -- *       calling thread.
      --

   procedure ddsrt_rwlock_read
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_read";

      --*
      -- * @brief Acquire a read-write lock for writing.
      -- *
      -- * @param[in]  rwlock  Read-write lock to acquire.
      --

   procedure ddsrt_rwlock_write
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_write";

      --*
-- * @brief Try to acquire a read-write lock for reading.
-- *
-- * Try to acquire a read-write lock while for reading, immediately return if
-- * the lock is already exclusively acquired by another thread.
-- *
-- * @param[in]  rwlock  Read-write lock to aqcuire.
-- *
-- * @post Data related to the critical section must not changed by the
-- *       calling thread.
-- *
-- * @returns true if the lock was acquired, otherwise false.
      --

   function ddsrt_rwlock_tryread
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_tryread";

      --*
      -- * @brief Try to acquire a read-write lock for writing.
      -- *
      -- * Try to acquire a read-write lock for writing, immediately return if the
      -- * lock is already acquired, either for reading or writing, by another thread.
      -- *
      -- * @param[in]  rwlock  Read-write lock to acquire.
      -- *
      -- * @returns true if the lock was acquired, otherwise false.
      --

   function ddsrt_rwlock_trywrite
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_trywrite";

      --*
      -- * @brief Release a previously acquired read-write lock.
      -- *
      -- * @param[in]  rwlock  Read-write lock to release.
      --

   procedure ddsrt_rwlock_unlock
     (rwlock : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_rwlock_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_rwlock_unlock";

      -- Initialization callback used by ddsrt_once
   type ddsrt_once_fn is access procedure with
      Convention => C;

      --*
-- * @brief Invoke init_fn exactly once for a given control.
-- *
-- * The first thread to call this function with a given control will call the
-- * function specified by @init_fn with no arguments. All following calls with
-- * the same control will not call the specified function.
-- *
-- * @pre The control parameter is properly initialized with DDSRT_ONCE_INIT.
      --

   procedure ddsrt_once
     (control : access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_once_t;
      init_fn : ddsrt_once_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_once";

end CycloneDDS.Low_Level.dds_ddsrt_sync_h;
