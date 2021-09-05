pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsrt_time_h is

   --  unsupported macro: DDS_NSECS_IN_SEC INT64_C(1000000000)
   --  unsupported macro: DDS_NSECS_IN_MSEC INT64_C(1000000)
   --  unsupported macro: DDS_NSECS_IN_USEC INT64_C(1000)
   --  unsupported macro: DDS_NEVER ((dds_time_t) INT64_MAX)
   --  unsupported macro: DDS_INFINITY ((dds_duration_t) INT64_MAX)
   --  unsupported macro: DDS_TIME_INVALID ((dds_time_t) INT64_MIN)
   --  unsupported macro: DDS_DURATION_INVALID ((dds_duration_t) INT64_MIN)
   --  arg-macro: function DDS_SECS (n)
   --    return (n) * DDS_NSECS_IN_SEC;
   --  arg-macro: function DDS_MSECS (n)
   --    return (n) * DDS_NSECS_IN_MSEC;
   --  arg-macro: function DDS_USECS (n)
   --    return (n) * DDS_NSECS_IN_USEC;
   --  unsupported macro: DDSRT_MTIME_NEVER ((ddsrt_mtime_t) { DDS_NEVER })
   --  unsupported macro: DDSRT_WCTIME_NEVER ((ddsrt_wctime_t) { DDS_NEVER })
   --  unsupported macro: DDSRT_ETIME_NEVER ((ddsrt_etime_t) { DDS_NEVER })
   --  unsupported macro: DDSRT_WCTIME_INVALID ((ddsrt_wctime_t) { INT64_MIN })
   DDSRT_RFC3339STRLEN : constant :=
     (25);  --  /usr/gnat/include/dds/ddsrt/time.h:163

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
   -- * @file
   -- * @brief DDS C Time support API
   -- *
   -- * This header file defines the public API of the in the
   -- * CycloneDDS C language binding.
   --

   --  Times are represented using a 64-bit signed integer, encoding
   --  nanoseconds since the epoch. Considering the nature of these
   --  systems, one would best use TAI, International Atomic Time, rather
   --  than something UTC, but availability may be limited.
   --  Valid times are non-negative and times up to 2**63-2 can be
   --  represented. 2**63-1 is defined to represent, essentially, "never".
   --  This is good enough for a couple of centuries.
   --

   --* Absolute Time definition
   subtype dds_time_t is long;

   --* Relative Time definition in nanoseconds
   subtype dds_duration_t is long;

   --* @name Macro definition for time units in nanoseconds.
   --  @{*

   --* @}
   --* @name Infinite timeout for indicate absolute time
   --* @name Infinite timeout for relative time
   --* @name Invalid time value for assigning to time output when something goes wrong
   --* @name Invalid duration value
   --* @name Macro definition for time conversion to nanoseconds
   --  @{*

   --* @}
   type ddsrt_mtime_t is record
      v : aliased dds_time_t;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsrt_wctime_t is record
      v : aliased dds_time_t;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsrt_etime_t is record
      v : aliased dds_time_t;
   end record with
      Convention => C_Pass_By_Copy;

      --*
      -- * @brief Get the current time in nanoseconds since the UNIX Epoch.
      -- *
      -- * @returns Current time.
      --

   function dds_time return dds_time_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_time";

      --*
-- * @brief Suspend execution of calling thread until relative time n elapsed.
-- *
-- * Execution is suspended for n nanoseconds. Should the call be interrupted,
-- * the call is re-entered with the remaining time.
-- *
-- * @param[in]  reltime  Relative time in nanoseconds.
      --

   procedure dds_sleepfor (reltime : dds_duration_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_sleepfor";

      --*
      -- * @brief Get the current time in nanoseconds since the UNIX Epoch.  Identical
      -- * to (ddsrt_wctime_t){dds_time()}
      -- *
      -- * @returns Curren time.
      --

   function ddsrt_time_wallclock return ddsrt_wctime_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_time_wallclock";

      --*
-- * @brief Get high resolution, monotonic time.
-- *
-- * The monotonic clock is a clock with near real-time progression and can be
-- * used when a high-resolution time is needed without the need for it to be
-- * related to the wall-clock. The resolution of the clock is typically the
-- * highest available on the platform.
-- *
-- * The clock is not guaranteed to be strictly monotonic, but on most common
-- * platforms it will be (based on performance-counters or HPET's).
-- *
-- * @returns Monotonic time if available, otherwise real time.
      --

   function ddsrt_time_monotonic return ddsrt_mtime_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_time_monotonic";

      --*
      -- * @brief Get high resolution, elapsed (and thus monotonic) time since some
      -- * fixed unspecified past time.
      -- *
      -- * The elapsed time clock is a clock with near real-time progression and can be
      -- * used when a high-resolution suspend-aware monotonic clock is needed, without
      -- * having to deal with the complications of discontinuities if for example the
      -- * time is changed. The fixed point from which the elapsed time is returned is
      -- * not guaranteed to be fixed over reboots of the system.
      -- *
      -- * @returns Elapsed time if available, otherwise return monotonic time.
      --

   function ddsrt_time_elapsed return ddsrt_etime_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_time_elapsed";

      --*
      -- * @brief Convert time into a human readable string in RFC 3339 format.
      -- *
      -- * Converts the calender time into a null-terminated string in RFC 3339 format.
      -- * e.g. "2014-10-24 15:32:27-04:00".
      -- *
      -- * UTC offset is omitted if time-zone information is unknown.
      -- *
      -- * @param[in]  abstime  Time in nanoseconds since UNIX Epoch.
      -- * @param[in]  str      String to write human readable timestamp to.
      -- * @param[in]  size     Number of bytes available in @str.
      -- *
      -- * @returns Number of bytes written (excluding terminating null byte). The
      -- *          string is truncated if str is not sufficiently large enough. Thus,
      -- *          a return value of size or more means the output was truncated.
      --

   function ddsrt_ctime
     (abstime : dds_time_t; str : Interfaces.C.Strings.chars_ptr;
      size    : unsigned_long) return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_ctime";

      --*
-- * @brief Calculate a time given an offset time and a duration.
-- *
-- * Negative time can become positive by adding a large enough duration, of
-- * course a positive time can become negative given a large enough negative
-- * duration.
-- *
-- * @param[in]  abstime  Timestamp in nanoseconds since UNIX Epoch.
-- * @param[in]  reltime  Relative time in nanoseconds.
-- *
-- * @returns A timestamp in nanoseconds since UNIX Epoch.
      --

   function ddsrt_time_add_duration
     (abstime : dds_time_t; reltime : dds_duration_t) return dds_time_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_time_add_duration";

      --*
-- * @brief Calculate a monotonic time given an offset time and a duration.
-- *
-- * Negative time can become positive by adding a large enough duration, of
-- * course a positive time can become negative given a large enough negative
-- * duration.
-- *
-- * @param[in]  abstime  Timestamp in nanoseconds since UNIX Epoch.
-- * @param[in]  reltime  Relative time in nanoseconds.
-- *
-- * @returns A timestamp in nanoseconds since UNIX Epoch.
      --

   function ddsrt_mtime_add_duration
     (abstime : ddsrt_mtime_t; reltime : dds_duration_t)
      return ddsrt_mtime_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mtime_add_duration";

      --*
-- * @brief Calculate a wall-clock time given an offset time and a duration.
-- *
-- * Negative time can become positive by adding a large enough duration, of
-- * course a positive time can become negative given a large enough negative
-- * duration.
-- *
-- * @param[in]  abstime  Timestamp in nanoseconds since UNIX Epoch.
-- * @param[in]  reltime  Relative time in nanoseconds.
-- *
-- * @returns A timestamp in nanoseconds since UNIX Epoch.
      --

   function ddsrt_wctime_add_duration
     (abstime : ddsrt_wctime_t; reltime : dds_duration_t)
      return ddsrt_wctime_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_wctime_add_duration";

      --*
-- * @brief Calculate an elapsed time given an offset time and a duration.
-- *
-- * Negative time can become positive by adding a large enough duration, of
-- * course a positive time can become negative given a large enough negative
-- * duration.
-- *
-- * @param[in]  abstime  Timestamp in nanoseconds since UNIX Epoch.
-- * @param[in]  reltime  Relative time in nanoseconds.
-- *
-- * @returns A timestamp in nanoseconds since UNIX Epoch.
      --

   function ddsrt_etime_add_duration
     (abstime : ddsrt_etime_t; reltime : dds_duration_t)
      return ddsrt_etime_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_etime_add_duration";

      --*
      -- * @brief Convert a relative time to microseconds rounding up.
      -- *
      -- * @param[in]  reltime  Relative time to convert.
      -- *
      -- * @returns INFINITE if @reltime was @DDS_INIFINITY, relative time converted to
      -- *          microseconds otherwise.
      --

      --*
      -- * @brief Convert monotonic time seconds & microseconds
      -- *
      -- * @param[in]   t     Monotonic time to convert
      -- * @param[out]  sec   Seconds part
      -- * @param[out]  usec  Microseconds part
      --

   procedure ddsrt_mtime_to_sec_usec
     (sec : access int; usec : access int; t : ddsrt_mtime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_mtime_to_sec_usec";

      --*
      -- * @brief Convert wall-clock time seconds & microseconds
      -- *
      -- * @param[in]   t     Wall-clock time to convert
      -- * @param[out]  sec   Seconds part
      -- * @param[out]  usec  Microseconds part
      --

   procedure ddsrt_wctime_to_sec_usec
     (sec : access int; usec : access int; t : ddsrt_wctime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_wctime_to_sec_usec";

      --*
      -- * @brief Convert elapsed time seconds & microseconds
      -- *
      -- * @param[in]   t     Elasped time to convert
      -- * @param[out]  sec   Seconds part
      -- * @param[out]  usec  Microseconds part
      --

   procedure ddsrt_etime_to_sec_usec
     (sec : access int; usec : access int; t : ddsrt_etime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_etime_to_sec_usec";

end CycloneDDS.Low_Level.dds_ddsrt_time_h;
