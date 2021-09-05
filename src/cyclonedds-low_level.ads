with Interfaces.C;
with System;
package CycloneDDS.Low_Level is
   package Bits_Pthreadtypes_H is
      type Pthread_T is new Integer;
   end Bits_Pthreadtypes_H;
   package Bits_Types_Struct_Iovec_H is
      type Iovec is record
         Iov_Base : System.Address;  -- /usr/include/bits/types/struct_iovec.h:28
         Iov_Len  : aliased Interfaces.C.Size_T;  -- /usr/include/bits/types/struct_iovec.h:29
      end record
        with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_iovec.h:26

      --  Length of data.
   end Bits_Types_Struct_Iovec_H;
   package openssl_ossl_typ_h is
      type SSL is new Integer;
      type BIO is new Integer;
   end openssl_ossl_typ_h;

end CycloneDDS.Low_Level;
