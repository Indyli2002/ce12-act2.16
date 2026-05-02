output "alarm_name" {

  value = aws_cloudwatch_metric_alarm.info_count_alarm.alarm_name

}

output "sns_topic_arn" {

  value = aws_sns_topic.alert_topic.arn

}