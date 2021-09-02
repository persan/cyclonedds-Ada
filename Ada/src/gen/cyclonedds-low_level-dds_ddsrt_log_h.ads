pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

with System;


package CycloneDDS.Low_Level.dds_ddsrt_log_h is

   DDS_LC_FATAL : constant := (1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:45

   DDS_LC_ERROR : constant := (2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:47

   DDS_LC_WARNING : constant := (4);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:49

   DDS_LC_INFO : constant := (8);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:51

   DDS_LC_CONFIG : constant := (16);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:53

   DDS_LC_DISCOVERY : constant := (32);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:55

   DDS_LC_DATA : constant := (64);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:57

   DDS_LC_TRACE : constant := (128);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:59

   DDS_LC_RADMIN : constant := (256);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:61

   DDS_LC_TIMING : constant := (512);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:63

   DDS_LC_TRAFFIC : constant := (1024);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:65

   DDS_LC_TOPIC : constant := (2048);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:67

   DDS_LC_TCP : constant := (4096);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:69

   DDS_LC_PLIST : constant := (8192);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:71

   DDS_LC_WHC : constant := (16384);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:73

   DDS_LC_THROTTLE : constant := (32768);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:75

   DDS_LC_RHC : constant := (65536);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:77

   DDS_LC_CONTENT : constant := (131072);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:79

   DDS_LC_SHM : constant := (262144);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:81
   --  unsupported macro: DDS_LC_ALL (DDS_LC_FATAL | DDS_LC_ERROR | DDS_LC_WARNING | DDS_LC_INFO | DDS_LC_CONFIG | DDS_LC_DISCOVERY | DDS_LC_DATA | DDS_LC_TRACE | DDS_LC_TIMING | DDS_LC_TRAFFIC | DDS_LC_TCP | DDS_LC_THROTTLE | DDS_LC_CONTENT | DDS_LC_SHM)
   --  unsupported macro: DDS_LOG_MASK (DDS_LC_FATAL | DDS_LC_ERROR | DDS_LC_WARNING | DDS_LC_INFO)
   --  unsupported macro: DDS_TRACE_MASK (~DDS_LOG_MASK)
   --  unsupported macro: DDS_FUNCTION __func__
   --  unsupported macro: DDS_PRETTY_FUNCTION __PRETTY_FUNCTION__
   --  unsupported macro: DDS_LOG(cat,...) ((dds_get_log_mask() & (cat)) ? dds_log((cat), __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__) : 0)
   --  unsupported macro: DDS_ILOG(cat,domid,...) ((dds_get_log_mask() & (cat)) ? dds_log_id((cat), (domid), __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__) : 0)
   --  unsupported macro: DDS_CLOG(cat,cfg,...) (((cfg)->c.mask & (cat)) ? dds_log_cfg((cfg), (cat), __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__) : 0)
   --  unsupported macro: DDS_INFO(...) DDS_LOG(DDS_LC_INFO, __VA_ARGS__)
   --  unsupported macro: DDS_WARNING(...) DDS_LOG(DDS_LC_WARNING, __VA_ARGS__)
   --  unsupported macro: DDS_ERROR(...) DDS_LOG(DDS_LC_ERROR, __VA_ARGS__)
   --  unsupported macro: DDS_FATAL(...) dds_log(DDS_LC_FATAL, __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__)
   --  arg-macro: procedure DDS_CLOG_MSVC_WORKAROUND (x)
   --    x
   --  unsupported macro: DDS_CINFO(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_INFO, __VA_ARGS__))
   --  unsupported macro: DDS_CWARNING(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_WARNING, __VA_ARGS__))
   --  unsupported macro: DDS_CERROR(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_ERROR, __VA_ARGS__))
   --  unsupported macro: DDS_CTRACE(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_TRACE, __VA_ARGS__))

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

  --* @file
  -- *
  -- * @brief DDS C Logging API
  -- *
  -- * This header file defines the public API for logging and controlling logging
  -- * in the DDS C language binding.
  --  

  --* @defgroup log_categories Convenience log category definitions.
  -- *
  -- * These defines expand into numeric values that can be ORed together to
  -- * specify messages of which categories must be passed to the respective sinks.
  -- *
  -- * Every category other than DDS_LC_FATAL, DDS_LC_ERROR, DDS_LC_WARNING and
  -- * DDS_LC_INFO automatically falls into the trace category.
  -- *
  -- * @{
  --  

  --* Fatal error condition. Immediate abort on sink return.  
  --* Error condition.  
  --* Warning condition.  
  --* Informational message.  
  --* Debug/trace messages related to configuration settings.  
  --* Debug/trace messages related to node discovery.  
  --* Currently unused.  
  --* Debug/trace messages for which no specialized category exists (yet).  
  --* Debug/trace messages related to receive administration.  
  --* Debug/trace messages related to timing.  
  --* Debug/trace messages related to send administration.  
  --* Currently unused.  
  --* Debug/trace messages related to TCP communication.  
  --* Debug/trace messages related to parameter list processing.  
  --* Debug/trace messages related to the writer history cache.  
  --* Debug/trace messages related to throttling.  
  --* Reader history cache.  
  --* Include content in traces.  
  --* Debug/trace messages related to SHMEM  
  --* All common trace categories.  
  --* @} 
  --* Structure with log message and meta data passed to callbacks.  
  --* Log category the message falls into.  
  --* Log domain id, UINT32_MAX is global.  
  --* Filename where message was generated.  
  --* Line number in file where message was generated.  
  --* Name of function message where message was generated.  
  --* Log message.  
  --* Size of log message.  
  --* Default log message header length  
   type dds_log_data_t is record
      priority : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:99
      domid : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:101
      file : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:103
      line : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:105
      c_function : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:107
      message : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:109
      size : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:111
      hdrsize : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:114

  --* Function signature that log and trace callbacks must adhere too.  
   type dds_log_write_fn_t is access procedure (arg1 : System.Address; arg2 : access constant dds_log_data_t)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:117

  --* Semi-opaque type for log/trace configuration.  
  --* Mask for testing whether the xLOG macro should forward to the
  --      function (and so incur the cost of constructing the parameters).
  --      Messages in DDS_LOG_MASK are rare, so the overhead of calling
  --      the function and then dropping the message is not an issue, unlike
  --      for messages in DDS_TRACE_MASK.  

   type ddsrt_log_cfg_common is record
      mask : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:126
      tracemask : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:129
      domid : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:132
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:120

  --* The actual configured trace mask  
  --* Domain id for reporting; UINT32_MAX = no domain  
   type anon1273_array1276 is array (0 .. 71) of aliased unsigned_char;
   type anon1273_union1274 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            fnptr : dds_log_write_fn_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:138
         when 1 =>
            ptr : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:139
         when 2 =>
            u32 : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:140
         when others =>
            pad : aliased anon1273_array1276;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:141
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type ddsrt_log_cfg is record
      c : aliased ddsrt_log_cfg_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:136
      u : aliased anon1273_union1274;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:142
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:135

   subtype ddsrt_log_cfg_t is ddsrt_log_cfg;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:143

   dds_log_mask : constant access unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_mask";

  --*
  -- * @brief Get currently enabled log and trace categories.
  -- *
  -- * @returns A uint32_t with enabled categories set.
  --  

   function dds_get_log_mask return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_log_mask";

  --*
  -- * @brief Set enabled log and trace categories.
  -- *
  -- * @param[in]  cats  Log and trace categories to enable.
  --  

   procedure dds_set_log_mask (cats : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_log_mask";

  --*
  -- * @private
  --  

   procedure dds_set_log_file (the_file : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_log_file";

  --*
  -- * @private
  --  

   procedure dds_set_trace_file (the_file : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_trace_file";

  --*
  -- * @brief Register callback to receive log messages
  -- *
  -- * Callbacks registered to handle log messages will receive messages of type
  -- * info, warning, error and fatal. Messages that fall into the trace category
  -- * will never be delivered to the callback.
  -- *
  -- * This operation is synchronous and only returns once the operation is
  -- * registered with all threads. Meaning that neither callback or userdata will
  -- * be referenced by the DDS stack on return.
  -- *
  -- * @param[in]  callback  Function pointer matching dds_log_write_fn signature
  -- *                       or a null pointer to restore the default sink.
  -- * @param[in]  userdata  User specified data passed along with each invocation
  -- *                       of callback.
  --  

   procedure dds_set_log_sink (callback : dds_log_write_fn_t; userdata : System.Address)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_log_sink";

  --*
  -- * @brief Register callback to receive trace messages
  -- *
  -- * Callbacks registered to handle trace messages will receive messages of type
  -- * info, warning, error and fatal as well as all message types that fall into
  -- * the trace category depending on the log mask.
  -- *
  -- * This operation is synchronous and only returns once the operation is
  -- * registered with all threads. Meaning that neither callback or
  -- * userdata will be referenced by the DDS stack on return.
  -- *
  -- * @param[in]  callback  Function pointer matching dds_log_write_fn_t signature
  -- *                       or a null pointer to restore the default sink.
  -- * @param[in]  userdata  User specified data passed along with each invocation
  -- *                       of callback.
  --  

   procedure dds_set_trace_sink (callback : dds_log_write_fn_t; userdata : System.Address)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_trace_sink";

  --*
  -- * @brief Initialize a struct ddsrt_log_cfg for use with dds_log_cfg
  -- *
  -- * Callbacks registered to handle log messages will receive messages of type
  -- * info, warning, error and fatal. Messages that fall into the trace category
  -- * will never be delivered to the callback.
  -- *
  -- * Callbacks registered to handle trace messages will receive messages of type
  -- * info, warning, error and fatal as well as all message types that fall into
  -- * the trace category depending on the log mask.
  -- *
  -- * This operation is synchronous and only returns once the operation is
  -- * registered with all threads. Meaning that neither callback or
  -- * userdata will be referenced by the DDS stack on return.
  -- *
  -- * @param[out] cfg            On return, initialised to make dds_log_cfg invoked
  -- *                            with this config object behave as specified by the
  -- *                            other parameters.
  -- * @param[in]  domid          Numerical identifier in log/trace, UINT32_MAX is
  -- *                            reserved for global logging.
  -- * @param[in]  tracemask      Mask determining which traces should be written.
  -- * @param[in]  log_fp         File for default sink.
  -- * @param[in]  trace_fp       File for default sink.
  --  

   procedure dds_log_cfg_init
     (cfg : access ddsrt_log_cfg;
      domid : unsigned;
      tracemask : unsigned;
      log_fp : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE;
      trace_fp : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_cfg_init";

  --*
  -- * @brief Write a log or trace message for a specific logging configuraiton
  -- * (categories, id, sinks).
  -- *
  -- * Direct use of #dds_log is discouraged. Use #DDS_CINFO, #DDS_CWARNING,
  -- * #DDS_CERROR, #DDS_CTRACE or #DDS_CLOG instead.
  --  

   procedure dds_log_cfg
     (cfg : access constant ddsrt_log_cfg;
      prio : unsigned;
      file : Interfaces.C.Strings.chars_ptr;
      line : unsigned;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_cfg";

  --*
  -- * @brief Write a log or trace message to the global configuration but with
  -- * specific domain (intended solely for use during domain start-up, while
  -- * the domain-specific logging/tracing hasn't been set yet).
  -- *
  -- * Write a log or trace message to one (or both) of the currently active sinks.
  -- *
  -- * Direct use of #dds_log_id is discouraged. Use #DDS_ILOG instead.
  --  

   procedure dds_log_id
     (prio : unsigned;
      domid : unsigned;
      file : Interfaces.C.Strings.chars_ptr;
      line : unsigned;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_id";

  --*
  -- * @brief Write a log or trace message to the global log/trace.
  -- *
  -- * Write a log or trace message to one (or both) of the currently active sinks.
  -- *
  -- * Direct use of #dds_log is discouraged. Use #DDS_INFO, #DDS_WARNING,
  -- * #DDS_ERROR, #DDS_FATAL or #DDS_LOG instead.
  --  

   procedure dds_log
     (prio : unsigned;
      file : Interfaces.C.Strings.chars_ptr;
      line : unsigned;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/log.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log";

  --*
  -- * @brief Undecorated function name of the current function.
  -- *
  -- * Behavior of DDS_FUNCTION outside a function is undefined. Note that
  -- * implementations differ across compilers and compiler versions. It might be
  -- * implemented as either a string literal or a constant variable.
  --  

  -- Solaris Studio had support for __func__ before it supported __FUNCTION__.
  --   Compiler flag -features=extensions is required on older versions.  

  -- Visual Studio  
  -- At least versions 2.9.6 and 3.3.4 of the GNU C Preprocessor only define
  --   __GNUC__ if the entire GNU C compiler is in use. VxWorks 5.5 targets invoke
  --   the preprocessor separately resulting in __GNUC__ not being defined.  

  --*
  -- * @brief Function signature of the current function.
  -- *
  -- * See comments on DDS_FUNCTION for details.
  --  

  -- Solaris Studio supports __PRETTY_FUNCTION__ in C since version 12.1  
  -- Solaris Studio supports __PRETTY_FUNCTION__ in C++ since version 12.3  
  -- Visual Studio  
  -- See comments on __vxworks macro above.  
  -- Fall back to DDS_FUNCTION.  
  --*
  -- * @brief Write a log message.
  -- *
  -- * Write a log or trace message to the currently active log and/or trace sinks
  -- * if the log category is enabled. Whether or not the category is enabled is
  -- * checked before any dds_log-related activities to save a couple of % CPU.
  -- *
  -- * Only messages that fall into one of the log categories are passed onto
  -- * dds_log. While messages that fall into a trace category could have been
  -- * passed just as easily, they are rejected so that tracing is kept entirely
  -- * separate from logging, if only cosmetic.
  --  

  --*
  -- * @brief Write a log message with a domain id override.
  -- *
  -- * Write a log or trace message to the currently active log and/or trace sinks
  -- * if the log category is enabled. Whether or not the category is enabled is
  -- * checked before any dds_log-related activities to save a couple of % CPU.
  -- *
  -- * Only messages that fall into one of the log categories are passed onto
  -- * dds_log. While messages that fall into a trace category could have been
  -- * passed just as easily, they are rejected so that tracing is kept entirely
  -- * separate from logging, if only cosmetic.
  --  

  --*
  -- * @brief Write a log message using a specific config.
  -- *
  -- * Write a log or trace message to the currently active log and/or trace sinks
  -- * if the log category is enabled. Whether or not the category is enabled is
  -- * checked before any dds_log-related activities to save a couple of % CPU.
  -- *
  -- * Only messages that fall into one of the log categories are passed onto
  -- * dds_log. While messages that fall into a trace category could have been
  -- * passed just as easily, they are rejected so that tracing is kept entirely
  -- * separate from logging, if only cosmetic.
  --  

  --* Write a log message of type #DDS_LC_INFO into global log.  
  --* Write a log message of type #DDS_LC_WARNING into global log.  
  --* Write a log message of type #DDS_LC_ERROR into global log.  
  --* Write a log message of type #DDS_LC_ERROR into global log and abort.  
  -- MSVC mishandles __VA_ARGS__ while claiming to be conforming -- and even
  --   if they have a defensible implement, they still differ from every other
  --   compiler out there.  An extra layer of macro expansion works around it.  

  --* Write a log message of type #DDS_LC_INFO using specific logging config.  
  --* Write a log message of type #DDS_LC_WARNING using specific logging config.  
  --* Write a log message of type #DDS_LC_ERROR using specific logging config.  
  --* Write a #DDS_LC_TRACE message using specific logging config.  
end CycloneDDS.Low_Level.dds_ddsrt_log_h;
