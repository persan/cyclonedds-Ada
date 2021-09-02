pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;

package CycloneDDS.Low_Level.idl_print_h is

   --  arg-macro: procedure IDL_COMMA__ ()
   --    ,
   --  unsupported macro: IDL_SHIFT__(shift_,...) shift_
   --  unsupported macro: IDL_PICK__(drop1_,drop2_,pick_,...) pick_
   --  arg-macro: procedure IDL_EVALUATE__ (eval_)
   --    eval_
   --  unsupported macro: IDL_EXPAND__(...) IDL_EXPAND_AGAIN__(__VA_ARGS__)
   --  unsupported macro: IDL_EXPAND_AGAIN__(...) IDL_EVALUATE__(IDL_PICK__(__VA_ARGS__, ))
   --  unsupported macro: IDL_MAYBE__(...) IDL_EXPAND__(IDL_COMMA__ IDL_SHIFT__(__VA_ARGS__, ) (), NULL, __VA_ARGS__)
   --  arg-macro: function IDL_ALLOCA__ (size_)
   --    return alloca(size_);
   --  unsupported macro: IDL_PRINTA(strp_,print_,...) IDL_PRINTA__((strp_), (print_), __VA_ARGS__, )
   --  unsupported macro: IDL_PRINTA__(strp_,print_,object_,...) ((idl_printa_arguments__((strp_), (print_), (object_), IDL_MAYBE__(__VA_ARGS__)) >= 0) ? ((*(idl_printa_strp__()) = IDL_ALLOCA__(idl_printa_size__())), idl_printa__()) : (-1))
   --  unsupported macro: IDL_PRINT__(strp_,print_,object_,...) idl_print__((strp_), (print_), (object_), IDL_MAYBE__(__VA_ARGS__))
   --  unsupported macro: IDL_PRINT(strp_,print_,...) IDL_PRINT__(strp_, print_, __VA_ARGS__, )
   type idl_print_t is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : size_t;
         arg3 : System.Address;
         arg4 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/print.h:33

   function idl_printa_arguments_u_u
     (strp : System.Address;
      print : idl_print_t;
      object : System.Address;
      user_data : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/print.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "idl_printa_arguments__";

   function idl_printa_size_u_u return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/print.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "idl_printa_size__";

   function idl_printa_strp_u_u return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/print.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "idl_printa_strp__";

   function idl_printa_u_u return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/print.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "idl_printa__";

   function idl_print_u_u
     (strp : System.Address;
      print : idl_print_t;
      object : System.Address;
      user_data : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/print.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "idl_print__";

end CycloneDDS.Low_Level.idl_print_h;
