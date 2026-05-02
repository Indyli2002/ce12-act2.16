resource "aws_cloudwatch_metric_alarm" "info_count_alarm" {

  alarm_name          = "${var.alias}-info-count-breach"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "info-count"
  namespace           = "/moviedb-api/${var.alias}"
  period              = 60
  statistic           = "Sum"
  threshold           = 10

  alarm_description = "Alarm when INFO logs exceed threshold"

  alarm_actions = [
    aws_sns_topic.alert_topic.arn
  ]

}