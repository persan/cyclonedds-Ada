with Dds.DomainParticipantFactory;
with Dds.DomainParticipant;
with Dds.Topic;
with Dds.String_DataWriter;
with DDS.String_TypeSupport;
with DDS.DataWriter;
procedure Main is

   Topic_Name  : DDS.String := DDS.To_DDS_String ("TestTopic");
   Factory     : Dds.DomainParticipantFactory.Ref_Access;
   Participant : Dds.DomainParticipant.Ref_Access;
   Topic       : Dds.Topic.Ref_Access;
   Writer      : Dds.String_DataWriter.Ref_Access;


   Data        : DDS.String;
begin

   Factory := Dds.DomainParticipantFactory.Get_Instance;
   Participant := Factory.Get_Or_Create_Participant (1);
   Topic   := Participant.Get_Or_Create_Topic (Topic_Name , DDS.String_TypeSupport.Get_Type_Name);
   Writer  := Dds.String_DataWriter.Ref_Access (Participant.Create_DataWriter (Topic));

   for I in 1 .. 5 loop
      Data := DDS.To_DDS_String ("Iteration: " & I'Img);
      Writer.Write (Data);
      delay 1.0;
   end loop;

   delay 5.0;

   Participant.Delete_DataWriter (DDS.Datawriter.Ref_Access (Writer));
   Participant.Delete_Topic (Topic);
   Participant.Delete_Contained_Entities;
   Factory.Delete_Participant (Participant);

end Main;
