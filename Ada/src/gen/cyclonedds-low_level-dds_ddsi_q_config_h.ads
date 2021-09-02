pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

limited with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;

package CycloneDDS.Low_Level.dds_ddsi_q_config_h is

   function config_init
     (config : Interfaces.C.Strings.chars_ptr;
      cfg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      domid : Interfaces.Unsigned_32) return access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_config.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "config_init";

   procedure config_print_cfgst (the_cfgst : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst; logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_config.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "config_print_cfgst";

   procedure config_print_rawconfig (cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config; logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_config.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "config_print_rawconfig";

   procedure config_free_source_info (the_cfgst : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_config.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "config_free_source_info";

   procedure config_fini (the_cfgst : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_config.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "config_fini";

end CycloneDDS.Low_Level.dds_ddsi_q_config_h;
