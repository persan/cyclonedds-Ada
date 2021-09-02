pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsrt_circlist_h is

   --  arg-macro: function DDSRT_FROM_CIRCLIST (typ_, member_, cle_)
   --    return (typ_ *) ((char *) (cle_) - offsetof (typ_, member_));
   type ddsrt_circlist_elem;
   type ddsrt_circlist is record
      latest : access ddsrt_circlist_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:28
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:27

   type ddsrt_circlist_elem is record
      next : access ddsrt_circlist_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:32
      prev : access ddsrt_circlist_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:33
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:31

   procedure ddsrt_circlist_init (list : access ddsrt_circlist)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_init";

   function ddsrt_circlist_isempty (list : access constant ddsrt_circlist) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_isempty";

   procedure ddsrt_circlist_append (list : access ddsrt_circlist; elem : access ddsrt_circlist_elem)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_append";

   procedure ddsrt_circlist_remove (list : access ddsrt_circlist; elem : access ddsrt_circlist_elem)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_remove";

   function ddsrt_circlist_oldest (list : access constant ddsrt_circlist) return access ddsrt_circlist_elem  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_oldest";

   function ddsrt_circlist_latest (list : access constant ddsrt_circlist) return access ddsrt_circlist_elem  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/circlist.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_circlist_latest";

end CycloneDDS.Low_Level.dds_ddsrt_circlist_h;
