pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with Interfaces.C.Extensions;

package CycloneDDS.Idl.String is

-- * Copyright(c) 2021 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   function idl_isalnum (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isalnum";

   function idl_isalpha (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isalpha";

   function idl_isblank (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isblank";

   function idl_iscntrl (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_iscntrl";

   function idl_isgraph (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isgraph";

   function idl_islower (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_islower";

   function idl_isprint (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isprint";

   function idl_ispunct (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_ispunct";

   function idl_isspace (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isspace";

   function idl_isupper (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isupper";

   function idl_isdigit (c : int; base : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_isdigit";

   function idl_toupper (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_toupper";

   function idl_tolower (c : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_tolower";

   function idl_strcasecmp
     (s1 : Interfaces.C.Strings.chars_ptr; s2 : Interfaces.C.Strings.chars_ptr)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strcasecmp";

   function idl_strncasecmp
     (s1 : Interfaces.C.Strings.chars_ptr; s2 : Interfaces.C.Strings.chars_ptr;
      n  : unsigned_long) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strncasecmp";

   function idl_strdup
     (str : Interfaces.C.Strings.chars_ptr)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strdup";

   function idl_strndup
     (str : Interfaces.C.Strings.chars_ptr; len : unsigned_long)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strndup";

   function idl_snprintf
     (str : Interfaces.C.Strings.chars_ptr; size : unsigned_long;
      fmt : Interfaces.C.Strings
        .chars_ptr  -- , ...
   ) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_snprintf";

   function idl_vsnprintf
     (str : Interfaces.C.Strings.chars_ptr; size : unsigned_long;
      fmt : Interfaces.C.Strings.chars_ptr; ap : access System.Address)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_vsnprintf";

   function idl_asprintf
     (strp            : System
        .Address; fmt : Interfaces.C.Strings
        .chars_ptr  -- , ...
   )
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_asprintf";

   function idl_vasprintf
     (strp : System.Address; fmt : Interfaces.C.Strings.chars_ptr;
      ap   : access System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "idl_vasprintf";

   function idl_strtoull
     (str  : Interfaces.C.Strings.chars_ptr; endptr : System.Address;
      base : int) return Extensions.unsigned_long_long with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strtoull";

   function idl_strtold
     (str : Interfaces.C.Strings.chars_ptr; endptr : System.Address)
      return long_double with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strtold";

   function idl_strtok_r
     (str   : Interfaces.C.Strings.chars_ptr;
      delim : Interfaces.C.Strings.chars_ptr; saveptr : System.Address)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "idl_strtok_r";

end CycloneDDS.Idl.String;
