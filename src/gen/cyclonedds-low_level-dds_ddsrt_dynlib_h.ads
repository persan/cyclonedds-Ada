pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_dynlib_h is

   DDSRT_HAVE_DYNLIB : constant :=
     (1);  --  /usr/gnat/include/dds/ddsrt/dynlib.h:22

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

   --typedef void *ddsrt_dynlib_t;
   type ddsrt_dynlib is null record;   -- incomplete struct

   type ddsrt_dynlib_t is access all ddsrt_dynlib;

   --*
   -- * @brief Load a dynamic shared library.
   -- *
   -- * The function ddsrt_dlopen() loads the dynamic shared object (shared library)
   -- * file, identified by 'name', sets the handle parameter for the loaded library and
   -- * returns the result with dds return code.
   -- *
   -- * If the 'translate' boolean is true, this function will first try to open the
   -- * library with a translated 'name'. Translated in this context means that if
   -- * "mylibrary" is provided, it will be translated into libmylibrary.so,
   -- * libmylibrary.dylib or mylibrary.dll depending on the platform.
   -- * This translation only happens when the given name does not contain
   -- * a directory.
   -- * If the function isn't able to load the library with the translated name, it
   -- * will still try the given name.
   -- *
   -- * @param[in]   name        Library file name.
   -- * @param[in]   translate   Automatic name translation on/off.
   -- * @param[out]  handle      Library handle that will be assigned after successfull operation. It is assigned to NULL if loading fails.
   -- *
   -- * @returns A dds_return_t indicating success or failure.
   -- *
   -- * @retval DDS_RETCODE_OK
   -- *             Library handle was successfully loaded.
   -- * @retval DDS_RETCODE_BAD_PARAM
   -- *             There is an invalid input in the parameter list
   -- * @retval DDS_RETCODE_ERROR
   -- *             Loading failed.
   -- *             Use ddsrt_dlerror() to diagnose the failure.
   --

   function ddsrt_dlopen
     (name   : Interfaces.C.Strings.chars_ptr; translate : Extensions.bool;
      handle : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_dlopen";

      --*
      -- * @brief Close the library.
      -- *
      -- * The function ddsrt_dlclose() informs the system that the
      -- * library, identified by 'handle', is no longer needed.
      -- * will get the memory address of a symbol,
      -- * identified by 'symbol', from a loaded library 'handle'.
      -- *
      -- * @param[in]   handle      Library handle.
      -- *
      -- * @returns A dds_return_t indicating success or failure.
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *             Library handle was successfully closed.
      -- * @retval DDS_RETCODE_ERROR
      -- *             Library closing failed.
      -- *             Use ddsrt_dlerror() to diagnose the failure.
      --

   function ddsrt_dlclose
     (handle : ddsrt_dynlib_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_dlclose";

      --*
-- * @brief Get the memory address of a symbol.
-- *
-- * The function ddsrt_dlsym() will get the memory address of a symbol,
-- * identified by 'symbol', from a loaded library 'handle'.
-- *
-- * @param[in]   handle      Library handle.
-- * @param[in]   symbol      Symbol name.
-- * @param[out]  address     The memory address of the loaded symbol (void*).
-- *
-- * @returns  A dds_return_t indicating success or failure.
-- *
-- * @retval DDS_RETCODE_OK
-- *             Symbol was found in the loaded library.
-- *             Address parameter is ready to use.
-- * @retval DDS_RETCODE_ERROR
-- *             Symbol was not found.
-- *             Use ddsrt_dlerror() to diagnose the failure.
      --

   function ddsrt_dlsym
     (handle  : ddsrt_dynlib_t; symbol : Interfaces.C.Strings.chars_ptr;
      address : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_dlsym";

      --*
-- * @brief Get the most recent library related error.
-- *
-- * The function ddsrt_dlerror() will return the most recent error of a
-- * call to ddsrt_dlopen, ddsrt_dlclose, ddsrt_dlsym in human readable form.
-- *
-- * If no error was found, it's either due to the fact that there
-- * actually was no error since init or last ddsrt_dlerror() call,
-- * or due to an unknown unrelated error.
-- *
-- * @param[out]  buf      Buffer to store the error message
-- * @param[in]   buflen   The length of the provided buffer (must be > 0).
-- *
-- * @returns A dds_return_t indicating success (>0) or failure.
-- *
-- * @retval >0
-- *             The length of the returned error message
-- * @retval 0
-- *             No dynamic library loading related error present
-- * @retval DDS_RETCODE_NOT_ENOUGH_SPACE
-- *             Buffer is not large enough to hold the error message
      --

   function ddsrt_dlerror
     (buf : Interfaces.C.Strings.chars_ptr; buflen : unsigned_long)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_dlerror";

end CycloneDDS.Low_Level.dds_ddsrt_dynlib_h;
