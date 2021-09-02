pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_netstat_h is

   DDSRT_HAVE_NETSTAT : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:21

   type ddsrt_netstat is record
      ipkt : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:33
      opkt : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:34
      ibytes : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:35
      obytes : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:32

   type ddsrt_netstat_control is null record;   -- incomplete struct

   function ddsrt_netstat_new (control : System.Address; device : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_netstat_new";

   function ddsrt_netstat_free (control : access ddsrt_netstat_control) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_netstat_free";

   function ddsrt_netstat_get (control : access ddsrt_netstat_control; stats : access ddsrt_netstat) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/netstat.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_netstat_get";

end CycloneDDS.Low_Level.dds_ddsrt_netstat_h;
