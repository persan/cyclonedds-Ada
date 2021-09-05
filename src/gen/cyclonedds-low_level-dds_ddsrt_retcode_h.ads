pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsrt_retcode_h is

   DDS_RETCODE_OK : constant :=
     (0);  --  /usr/gnat/include/dds/ddsrt/retcode.h:31
   DDS_RETCODE_ERROR : constant :=
     (-1);  --  /usr/gnat/include/dds/ddsrt/retcode.h:32
   DDS_RETCODE_UNSUPPORTED : constant :=
     (-2);  --  /usr/gnat/include/dds/ddsrt/retcode.h:33
   DDS_RETCODE_BAD_PARAMETER : constant :=
     (-3);  --  /usr/gnat/include/dds/ddsrt/retcode.h:34
   DDS_RETCODE_PRECONDITION_NOT_MET : constant :=
     (-4);  --  /usr/gnat/include/dds/ddsrt/retcode.h:35
   DDS_RETCODE_OUT_OF_RESOURCES : constant :=
     (-5);  --  /usr/gnat/include/dds/ddsrt/retcode.h:36
   DDS_RETCODE_NOT_ENABLED : constant :=
     (-6);  --  /usr/gnat/include/dds/ddsrt/retcode.h:37
   DDS_RETCODE_IMMUTABLE_POLICY : constant :=
     (-7);  --  /usr/gnat/include/dds/ddsrt/retcode.h:38
   DDS_RETCODE_INCONSISTENT_POLICY : constant :=
     (-8);  --  /usr/gnat/include/dds/ddsrt/retcode.h:39
   DDS_RETCODE_ALREADY_DELETED : constant :=
     (-9);  --  /usr/gnat/include/dds/ddsrt/retcode.h:40
   DDS_RETCODE_TIMEOUT : constant :=
     (-10);  --  /usr/gnat/include/dds/ddsrt/retcode.h:41
   DDS_RETCODE_NO_DATA : constant :=
     (-11);  --  /usr/gnat/include/dds/ddsrt/retcode.h:42
   DDS_RETCODE_ILLEGAL_OPERATION : constant :=
     (-12);  --  /usr/gnat/include/dds/ddsrt/retcode.h:43
   DDS_RETCODE_NOT_ALLOWED_BY_SECURITY : constant :=
     (-13);  --  /usr/gnat/include/dds/ddsrt/retcode.h:44

   DDS_XRETCODE_BASE : constant :=
     (-50);  --  /usr/gnat/include/dds/ddsrt/retcode.h:49
   --  arg-macro: function DDS_XRETCODE (x)
   --    return DDS_XRETCODE_BASE - (x);
   --  unsupported macro: DDS_RETCODE_IN_PROGRESS DDS_XRETCODE(1)
   --  unsupported macro: DDS_RETCODE_TRY_AGAIN DDS_XRETCODE(2)
   --  unsupported macro: DDS_RETCODE_INTERRUPTED DDS_XRETCODE(3)
   --  unsupported macro: DDS_RETCODE_NOT_ALLOWED DDS_XRETCODE(4)
   --  unsupported macro: DDS_RETCODE_HOST_NOT_FOUND DDS_XRETCODE(5)
   --  unsupported macro: DDS_RETCODE_NO_NETWORK DDS_XRETCODE(6)
   --  unsupported macro: DDS_RETCODE_NO_CONNECTION DDS_XRETCODE(7)
   --  unsupported macro: DDS_RETCODE_NOT_ENOUGH_SPACE DDS_XRETCODE(8)
   --  unsupported macro: DDS_RETCODE_OUT_OF_RANGE DDS_XRETCODE(9)
   --  unsupported macro: DDS_RETCODE_NOT_FOUND DDS_XRETCODE(10)

   subtype dds_return_t is int;

   --  State is unchanged following a function call returning an error
   --  other than UNSPECIFIED, OUT_OF_RESOURCES and ALREADY_DELETED.
   --  Error handling functions. Three components to returned int status value.
   --  1 - The DDS_ERR_xxx error number
   --  2 - The file identifier
   --  3 - The line number
   --  All functions return >= 0 on success, < 0 on error
   --

   --*
   -- * @name DDS_Error_Type
   -- * @{
   --

   -- Extended return codes are not in the DDS specification and are meant
   --   exclusively for internal use and must not be returned by the C API.

   --* Requested resource is busy
   --* Resource unavailable, try again
   --* Operation was interrupted
   --* Permission denied
   --* Host not found
   --* Network is not available
   --* Connection is not available
   -- Host not reachable is used to indicate that a connection was refused
   --   (ECONNREFUSED), reset by peer (ECONNRESET) or that a host or network cannot
--   be reached (EHOSTUNREACH, ENETUNREACH). Generally all system errors that
   --   indicate a connection cannot be made or that a message cannot be delivered,
   --   map onto host not reachable.

   --* Not enough space available
   -- Not enough space is used to indicate there is not enough buffer space to
   --   read a message from the network (i.e. EMSGSIZE), but is also used to
   --   indicate there is not enough space left on a device, etc.

   --* Result too large
   --* Not found
   --*
   -- * @}
   --

   --*
   -- * @brief Takes the error value and outputs a string corresponding to it.
   -- *
   -- * @param[in]  ret  Error value to be converted to a string
   -- *
   -- * @returns  String corresponding to the error value
   --

   function dds_strretcode
     (ret : dds_return_t) return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "dds_strretcode";

end CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
