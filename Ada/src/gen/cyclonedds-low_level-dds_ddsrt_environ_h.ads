pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;


package CycloneDDS.Low_Level.dds_ddsrt_environ_h is

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
  -- * @brief Get value for environment variable.
  -- *
  -- * @param[in]  name   Environment variable name.
  -- * @param[out] value  Alias to value of environment variable - must not be modified
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             Environment variable written to @buf.
  -- * @retval DDS_RETCODE_NOT_FOUND
  -- *             Environment variable not found.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             FIXME: document
  -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
  -- *             FIXME: document
  -- * @retval DDS_RETCODE_ERROR
  -- *             Unspecified error.
  --  

   function ddsrt_getenv (name : Interfaces.C.Strings.chars_ptr; value : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/environ.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getenv";

  --*
  -- * @brief Set environment variable value.
  -- *
  -- * Sets the environment variable to the value specified in value, or
  -- * alternatively, unsets the environment variable if value is an empty string.
  -- *
  -- * @param[in]  name   Environment variable name.
  -- * @param[in]  value  Value to set environment variable to.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             Environment variable successfully set to @value.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Invalid environment variable name.
  -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
  -- *             Not enough system resources to set environment variable.
  -- * @retval DDS_RETCODE_ERROR
  -- *             Unspecified system error.
  --  

   function ddsrt_setenv (name : Interfaces.C.Strings.chars_ptr; value : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/environ.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_setenv";

  --*
  -- * @brief Unset environment variable value.
  -- *
  -- * @param[in]  name  Environment variable name.
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *             Environment variable successfully unset.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *             Invalid environment variable name.
  -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
  -- *             Not enough system resources to unset environment variable.
  -- * @retval DDS_RETCODE_ERROR
  -- *             Unspecified system error.
  --  

   function ddsrt_unsetenv (name : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/environ.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_unsetenv";

  --*
  -- * @brief Expand environment variables within string.
  -- *
  -- * Expands ${X}, ${X:-Y}, ${X:+Y}, ${X:?Y} forms, but not $X.
  -- *
  -- * The result string should be freed with ddsrt_free().
  -- *
  -- * @param[in]  string  String to expand.
  -- * @param[in]  domid   Domain id that this is relevant to
  -- *                     UINT32_MAX means none (see logging)
  -- *                     also made available as
  -- *                        ${CYCLONEDDS_DOMAIN_ID}
  -- *
  -- * @returns Allocated char*.
  -- *
  -- * @retval NULL
  -- *             Expansion failed.
  -- * @retval Pointer
  -- *             Copy of the string argument with the environment
  -- *             variables expanded.
  --  

   function ddsrt_expand_envvars (string : Interfaces.C.Strings.chars_ptr; domid : unsigned) return Interfaces.C.Strings.chars_ptr  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/environ.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_expand_envvars";

  --*
  -- * @brief Expand environment variables within string.
  -- *
  -- * Expands $X, ${X}, ${X:-Y}, ${X:+Y}, ${X:?Y} forms, $ and  * can be escaped with \.
  --.
  -- *
  -- * The result string should be freed with ddsrt_free().
  -- *
  -- * @param[in]  string  String to expand.
  -- *
  -- * @returns Allocated char*.
  -- *
  -- * @retval NULL
  -- *             Expansion failed.
  -- * @retval Pointer
  -- *             Copy of the string argument with the environment
  -- *             variables expanded.
  --  

   function ddsrt_expand_envvars_sh (string : Interfaces.C.Strings.chars_ptr; domid : unsigned) return Interfaces.C.Strings.chars_ptr  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/environ.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_expand_envvars_sh";

end CycloneDDS.Low_Level.dds_ddsrt_environ_h;
