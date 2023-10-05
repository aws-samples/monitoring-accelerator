
/* CPUUtilization Alarm setup for elasticache cluster ids specified. This is a host-level metric reported as a percentage. */

resource "aws_cloudwatch_metric_alarm" "elasticache_cpu_utilization" {
  count               = length(var.cache_cluster_id)
  alarm_name          = "elasticache_${var.cache_cluster_id[count.index]}_cpu_utilization_alarm_name"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = var.period
  statistic           = "Average"
  threshold           = var.cpu_utilization_threshold
  alarm_description   = "Alert when the ElastiCache's CPUUtilization is greater or equal to a specified value"
  alarm_actions       = var.alarm_actions
  
  dimensions = {
    CacheClusterId = var.cache_cluster_id[count.index]
  }


}

/* EngineCPUUtilization Alarm setup for elasticache cluster ids specified. Reports the percentage of usage on the Redis engine core */

resource "aws_cloudwatch_metric_alarm" "elasticache_engine_cpu_utilization" {
  count               = length(var.cache_cluster_id)
  alarm_name          = "elasticache_${var.cache_cluster_id[count.index]}_engine_cpu_utilization_alarm_name"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "EngineCPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = var.period
  statistic           = "Average"
  threshold           = var.engine_cpu_utilization_threshold
  alarm_description   = "Alert when the ElastiCache's EngineCPUUtilization is greater or equal to a specified value"
  alarm_actions       = var.alarm_actions
  
  dimensions = {
    CacheClusterId = var.cache_cluster_id[count.index]
  }


}

/* DatabaseMemoryUsagePercentage Alarm setup for elasticache cluster ids specified. Percentage of memory utilization, based on the current memory utilization and the maxmemory */

resource "aws_cloudwatch_metric_alarm" "elasticache_database_memory_usage_percentage" {
  count               = length(var.cache_cluster_id)
  alarm_name          = "elasticache_${var.cache_cluster_id[count.index]}_database_memory_usage_percentage_alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "DatabaseMemoryUsagePercentage"
  namespace           = "AWS/ElastiCache"
  period              = var.period
  statistic           = "Average"
  threshold           = var.database_memory_usage_percentage_threshold
  alarm_description   = "Alert when the ElastiCache's DatabaseMemoryUsagePercentage is greater or equal to a specified value"
  alarm_actions       = var.alarm_actions
  
  dimensions = {
    CacheClusterId = var.cache_cluster_id[count.index]
  }


}

/* ReplicationLag Alarm setup for elasticache cluster ids specified. How far behind the replica is from the primary node */

resource "aws_cloudwatch_metric_alarm" "elasticache_replication_lag" {
  count               = length(var.cache_cluster_id)
  alarm_name          = "elasticache_${var.cache_cluster_id[count.index]}_replication_lag_alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "ReplicationLag"
  namespace           = "AWS/ElastiCache"
  period              = var.period
  statistic           = "Average"
  threshold           = var.replication_lag_threshold
  alarm_description   = "Alert when the ElastiCache's ReplicationLag is greater or equal to a specified value"
  alarm_actions       = var.alarm_actions
  
  dimensions = {
    CacheClusterId = var.cache_cluster_id[count.index]
  }


}

/* FreeableMemory Alarm setup for elasticache cluster ids specified. The FreeableMemory being close to 0 (i.e., below 100MB) indicates a node is under memory pressure */

resource "aws_cloudwatch_metric_alarm" "elasticache_freeable_memory" {
  count               = length(var.cache_cluster_id)
  alarm_name          = "elasticache_${var.cache_cluster_id[count.index]}_freeable_memory_alarm"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "FreeableMemory"
  namespace           = "AWS/ElastiCache"
  period              = var.period
  statistic           = "Average"
  threshold           = var.freeable_memory_threshold
  alarm_description   = "Alert when the ElastiCache's FreeableMemory is less than or equal to a specified value"
  alarm_actions       = var.alarm_actions
  
  dimensions = {
    CacheClusterId = var.cache_cluster_id[count.index]
  }


}

/* CurrConnections Alarm setup for elasticache cluster ids specified. This is a cache engine metric */

resource "aws_cloudwatch_metric_alarm" "elasticache_curr_connections" {
  count               = length(var.cache_cluster_id)
  alarm_name          = "elasticache_${var.cache_cluster_id[count.index]}_curr_connections_alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "CurrConnections"
  namespace           = "AWS/ElastiCache"
  period              = var.period
  statistic           = "Average"
  threshold           = var.curr_connections_threshold
  alarm_description   = "Alert when the ElastiCache's CurrConnections is greater or equal to a specified value"
  alarm_actions       = var.alarm_actions
  
  dimensions = {
    CacheClusterId = var.cache_cluster_id[count.index]
  }


}

