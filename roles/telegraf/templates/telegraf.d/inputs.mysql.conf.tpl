[[inputs.mysql]]
  ## specify servers via a url matching:
  ##  [username[:password]@][protocol[(address)]]/[?tls=[true|false|skip-verify|custom]]
  ##  see https://github.com/go-sql-driver/mysql#dsn-data-source-name
  ##  e.g.
  ##    servers = ["user:passwd@tcp(127.0.0.1:3306)/?tls=false"]
  ##    servers = ["user@tcp(127.0.0.1:3306)/?tls=false"]
  #
  ## If no servers are specified, then localhost is used as the host.
  servers = ["{{ msyql_user }}:{{ mysql_pass }}@tcp({{ inventory_hostname }}:3306)/"]

  ## Selects the metric output format.
  ##
  ## This option exists to maintain backwards compatibility, if you have
  ## existing metrics do not set or change this value until you are ready to
  ## migrate to the new format.
  ##
  ## If you do not have existing metrics from this plugin set to the latest
  ## version.
  ##
  ## Telegraf >=1.6: metric_version = 2
  ##           <1.6: metric_version = 1 (or unset)
  metric_version = 2

  ## if the list is empty, then metrics are gathered from all database tables
  # table_schema_databases = []

  ## gather metrics from INFORMATION_SCHEMA.TABLES for databases provided above list
  # gather_table_schema = false

  ## gather thread state counts from INFORMATION_SCHEMA.PROCESSLIST
  # gather_process_list = false

  ## gather user statistics from INFORMATION_SCHEMA.USER_STATISTICS
  # gather_user_statistics = false

  ## gather auto_increment columns and max values from information schema
  # gather_info_schema_auto_inc = false

  ## gather metrics from INFORMATION_SCHEMA.INNODB_METRICS
  # gather_innodb_metrics = false

  ## gather metrics from SHOW SLAVE STATUS command output
  # gather_slave_status = false

  ## gather metrics from SHOW BINARY LOGS command output
  # gather_binary_logs = false

  ## gather metrics from SHOW GLOBAL VARIABLES command output
  # gather_global_variables = true

  ## gather metrics from PERFORMANCE_SCHEMA.TABLE_IO_WAITS_SUMMARY_BY_TABLE
  # gather_table_io_waits = false

  ## gather metrics from PERFORMANCE_SCHEMA.TABLE_LOCK_WAITS
  # gather_table_lock_waits = false

  ## gather metrics from PERFORMANCE_SCHEMA.TABLE_IO_WAITS_SUMMARY_BY_INDEX_USAGE
  # gather_index_io_waits = false

  ## gather metrics from PERFORMANCE_SCHEMA.EVENT_WAITS
  # gather_event_waits = false

  ## gather metrics from PERFORMANCE_SCHEMA.FILE_SUMMARY_BY_EVENT_NAME
  # gather_file_events_stats = false

  ## gather metrics from PERFORMANCE_SCHEMA.EVENTS_STATEMENTS_SUMMARY_BY_DIGEST
  # gather_perf_events_statements             = false
  #
  ## gather metrics from PERFORMANCE_SCHEMA.EVENTS_STATEMENTS_SUMMARY_BY_ACCOUNT_BY_EVENT_NAME
  # gather_perf_sum_per_acc_per_event         = false
  #
  ## list of events to be gathered for gather_perf_sum_per_acc_per_event
  ## in case of empty list all events will be gathered
  # perf_summary_events                       = []
  #
  # gather_perf_events_statements = false

  ## the limits for metrics form perf_events_statements
  # perf_events_statements_digest_text_limit = 120
  # perf_events_statements_limit = 250
  # perf_events_statements_time_limit = 86400

  ## Some queries we may want to run less often (such as SHOW GLOBAL VARIABLES)
  ##   example: interval_slow = "30m"
  # interval_slow = ""

  ## Optional TLS Config (will be used if tls=custom parameter specified in server uri)
  # tls_ca = "/etc/telegraf/ca.pem"
  # tls_cert = "/etc/telegraf/cert.pem"
  # tls_key = "/etc/telegraf/key.pem"
  ## Use TLS but skip chain & host verification
  # insecure_skip_verify = false
