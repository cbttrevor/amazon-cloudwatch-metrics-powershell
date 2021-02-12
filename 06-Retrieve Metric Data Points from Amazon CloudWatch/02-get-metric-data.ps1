# Note that high-resolution (< 60 seconds) metrics are only available for up to 3 hours
(Get-Command -Name Get-CWMetricData).Parameters.MetricDataQuery

$Query = [Amazon.CloudWatch.Model.MetricDataQuery]::new()
$Query.MetricStat = [Amazon.CloudWatch.Model.MetricStat]::new()
$Query.MetricStat.Metric = [Amazon.CloudWatch.Model.Metric]::new()
$Query.MetricStat.Metric.Namespace = 'TrevorSullivan'
$Query.MetricStat

Get-AWSCmdletName -ApiOperation GetMetricStatistics
Get-CWMetricData 