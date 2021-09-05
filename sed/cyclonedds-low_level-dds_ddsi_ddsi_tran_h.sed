s!\btype ddsi_tran_conn;!type ddsi_tran_conn_record;!
s!all ddsi_tran_conn;!all ddsi_tran_conn_record;!
s!type ddsi_tran_conn is record!type ddsi_tran_conn_record is record!
s!\btype ddsi_tran_listener\b!type ddsi_tran_listener_record!
s!all ddsi_tran_listener;!all ddsi_tran_listener_record;!

s!--  <>type ddsi_tran_qos;!type ddsi_tran_qos_t;!

s!access constant ddsi_tran_qos!access constant ddsi_tran_qos_t!
s!constant ddsi_tran_conn!constant ddsi_tran_conn_t!
