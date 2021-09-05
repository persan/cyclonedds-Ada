pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package CycloneDDS.Low_Level.dds_ddsrt_expand_vars_h is

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

   type expand_lookup_fn is access function
     (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address)
      return Interfaces.C.Strings.chars_ptr with
      Convention => C;

      --*
      -- * @brief Expand variables within string.
      -- *
      -- * Expands ${X}, ${X:-Y}, ${X:+Y}, ${X:?Y} forms, but not $X.
      -- *
      -- * The result string should be freed with ddsrt_free().
      -- *
      -- * @param[in]  string  String to expand.
      -- * @param[in]  lookup  Lookup function to retrieve replacement value
      -- * @param[in]  data    Data passed to lookup function
      -- *
      -- * @returns Allocated char*.
      -- *
      -- * @retval NULL
      -- *             Expansion failed.
      -- * @retval Pointer
      -- *             Copy of the string argument with the variables expanded.
      --

   function ddsrt_expand_vars
     (string : Interfaces.C.Strings.chars_ptr; lookup : expand_lookup_fn;
      data   : System.Address) return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_expand_vars";

      --*
      -- * @brief Expand variables within string.
      -- *
      -- * Expands $X, ${X}, ${X:-Y}, ${X:+Y}, ${X:?Y} forms, $ and  * can be escaped with \.
      --.
      -- *
      -- * The result string should be freed with ddsrt_free().
      -- *
      -- * @param[in]  string  String to expand.
      -- * @param[in]  lookup  Lookup function to retrieve replacement value
      -- * @param[in]  data    Data passed to lookup function
      -- *
      -- * @returns Allocated char*.
      -- *
      -- * @retval NULL
      -- *             Expansion failed.
      -- * @retval Pointer
      -- *             Copy of the string argument with the variables expanded.
      --

   function ddsrt_expand_vars_sh
     (string : Interfaces.C.Strings.chars_ptr; lookup : expand_lookup_fn;
      data   : System.Address) return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_expand_vars_sh";

end CycloneDDS.Low_Level.dds_ddsrt_expand_vars_h;
