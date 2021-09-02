pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with CycloneDDS.Low_Level.idl_processor_h;

package CycloneDDS.Low_Level.idlc_generator_h is

   --  unsupported macro: IDLC_GENERATOR_OPTIONS generator_options
   --  unsupported macro: IDLC_GENERATOR_ANNOTATIONS generator_annotations
   --  unsupported macro: IDLC_GENERATE generate
   type idlc_generator_options_t is access function return System.Address
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/generator.h:28

   type idlc_generator_annotations_t is access function return System.Address
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/generator.h:29

   type idlc_generate_t is access function (arg1 : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idlc/generator.h:30

end CycloneDDS.Low_Level.idlc_generator_h;
