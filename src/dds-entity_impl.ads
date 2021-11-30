pragma Ada_2022;


with DDS.StatusCondition;
with DDS.Entity;
with CycloneDDS.Low_Level.Dds_Dds_H;
package DDS.Entity_Impl is

   type Ref is new DDS.Entity.Ref with  record
      Impl : CycloneDDS.Low_Level.Dds_Dds_H.Dds_Entity_T;
   end record;
   type Ref_Access is access all Ref'Class;

   procedure Enable (Self : not null access Ref);

   function Get_StatusCondition (Self : not null access Ref) return
     DDS.StatusCondition.Ref_Access;

   function Get_Status_Changes (Self : not null access Ref) return
     DDS.StatusMask;

   function Get_Instance_Handle (Self : not null access Ref) return
     DDS.InstanceHandle_T;

   function Get_Entity_Kind (Self : not null access Ref) return
     DDS.EntityKind_T;

end DDS.Entity_Impl;
