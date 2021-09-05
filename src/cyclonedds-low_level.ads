with Interfaces.C;
with System;
package CycloneDDS.Low_Level is

   package Bits_Socket_H is
      type Msghdr is new Integer;
      type Sockaddr is new Integer;
      type sockaddr_storage is new Integer;
   end Bits_Socket_H;

   package Bits_Pthreadtypes_H is
      type Pthread_T is new Integer;
      type Pthread_Cond_T is new Integer;
      type Pthread_Mutex_T is new Integer;
      type Pthread_Rwlock_T is new Integer;
      type Pthread_Once_T is new Integer;

   end Bits_Pthreadtypes_H;
   package Bits_Types_FILE_H is
      type FILE is new Integer;
   end  Bits_Types_FILE_H;
   package Bits_Types_Struct_Iovec_H is
      type Iovec is record
         Iov_Base : System.Address;  -- /usr/include/bits/types/struct_iovec.h:28
         Iov_Len  : aliased Interfaces.C.Size_T;  -- /usr/include/bits/types/struct_iovec.h:29
      end record
        with Convention => C_Pass_By_Copy;  -- /usr/include/bits/types/struct_iovec.h:26

      --  Length of data.
   end Bits_Types_Struct_Iovec_H;
   package Openssl_Ossl_Typ_H is
      type SSL is new Integer;
      type BIO is new Integer;
   end Openssl_Ossl_Typ_H;
   package Netinet_In_H is
      type In_Addr is new Integer;
   end Netinet_In_H;
end CycloneDDS.Low_Level;
