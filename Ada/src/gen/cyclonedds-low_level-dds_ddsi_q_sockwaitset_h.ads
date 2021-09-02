pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with System;

package CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h is

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

   type os_sockWaitset is null record;   -- incomplete struct

   type os_sockWaitset is access all os_sockWaitset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:19

   type os_sockWaitsetCtx is null record;   -- incomplete struct

   type os_sockWaitsetCtx is access all os_sockWaitsetCtx;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:20

  --  Allocates a new connection waitset. The waitset is thread-safe in
  --  that multiple threads may add and remove connections from the wait set
  --  or trigger it. However only a single thread may process events from
  --  the wait set using the Wait and NextEvent functions in a single handling
  --  loop.
  -- 

   function os_sockWaitsetNew return os_sockWaitset  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetNew";

  --  Frees the waitset WS. Any connections associated with it will
  --  be closed.
  -- 

   procedure os_sockWaitsetFree (ws : os_sockWaitset)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetFree";

  --  Triggers the waitset, from any thread.  It is level
  --  triggered, when called while no thread is waiting in
  --  os_sockWaitsetWait the trigger will cause an (early) wakeup on the
  --  next call to os_sockWaitsetWait.  Returns DDS_RETCODE_OK if
  --  successfully triggered, DDS_RETCODE_BAD_PARAMETER if an error occurs.
  --  Triggering a waitset may require resources and they may be counted.
  --  Do not trigger a waitset arbitrarily often without ensuring
  --  os_sockWaitsetWait is called often enough to let it release any
  --  resources used.
  --  Shared state updates preceding os_sockWaitsetTrigger are visible
  --  following os_sockWaitsetWait.
  -- 

   procedure os_sockWaitsetTrigger (ws : os_sockWaitset)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetTrigger";

  --  A connection may be associated with only one waitset at any time, and
  --  may be added to the waitset only once.  Failure to comply with this
  --  restriction results in undefined behaviour.
  --  Closing a connection associated with a waitset is handled gracefully: no
  --  operations will signal errors because of it.
  --  Returns < 0 on error, 0 if already present, 1 if added
  -- 

   function os_sockWaitsetAdd (ws : os_sockWaitset; conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetAdd";

  --  Drops all connections from the waitset from index onwards. Index
  --  0 corresponds to the first connection added to the waitset, index 1 to
  --  the second, etc. Behaviour is undefined when called after a successful wait
  --  but before all events had been enumerated.
  -- 

   procedure os_sockWaitsetPurge (ws : os_sockWaitset; index : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetPurge";

  --  Waits until some of the connections in WS have data to be read.
  --  Returns a new wait set context if one or more connections have data to read.
  --  However, the return may be spurious (NULL) (i.e., no events)
  --  If a context is returned it must be enumerated before os_sockWaitsetWait
  --  may be called again.
  --  Shared state updates preceding os_sockWaitsetTrigger are visible
  --  following os_sockWaitsetWait.
  -- 

   function os_sockWaitsetWait (ws : os_sockWaitset) return os_sockWaitsetCtx  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetWait";

  --  Returns the index of the next triggered connection in the
  --  waitset contect ctx, or -1 if the set of available events has been
  --  exhausted. Index 0 is the first connection added to the waitset, index
  --  1 the second, &c.
  --  Following a call to os_sockWaitsetWait on waitset that returned
  --  a context, one MUST enumerate all available events before
  --  os_sockWaitsetWait may be called again.
  --  If the return value is >= 0, *conn contains the connection on which
  --  data is available.
  -- 

   function os_sockWaitsetNextEvent (ctx : os_sockWaitsetCtx; conn : System.Address) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetNextEvent";

  -- Remove connection  
   procedure os_sockWaitsetRemove (ws : os_sockWaitset; conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_sockwaitset.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "os_sockWaitsetRemove";

end CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h;
