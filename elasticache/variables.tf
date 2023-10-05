# List of cache cluster ids for redis cluster

variable "cache_cluster_id" {
  type = list
  default = ["myrediscluster-0002-001","myrediscluster-0002-002","myrediscluster-0002-003"]
}

# Alarm Action using SNS Notifications

variable "alarm_actions" {
  type = list
  default = ["arn:aws:sns:us-east-1:account_num:CWAlarmNotification"]
}

# Evaluation Periods for all alarms configured. Can be separated per alarm too

variable "evaluation_periods" {
  type = number
  default = 2
}

# Period for all alarms configured. Can be separated per alarm too

variable "period" {
  type = number
  default = 60
}

# CPU Utilization Threshold

variable "cpu_utilization_threshold" {
  type = number
  default = 80
}

# EngineCPU Utilization Threshold

variable "engine_cpu_utilization_threshold" {
  type = number
  default = 90
}

# Database Memory Usage Percentage Threshold

variable "database_memory_usage_percentage_threshold" {
  type = number
  default = 90
}

# Replication Lag Threshold

variable "replication_lag_threshold" {
  type = number
  default = 60
}

# Freeable Memory Threshold

variable "freeable_memory_threshold" {
  type = number
  default = 100000000
}

# Current Connections Threshold

variable "curr_connections_threshold" {
  type = number
  default = 10000
}


