# Let's find a local system metric to work with

# Without any extra parameters, the Get-Counter command retrieves some basic system metrics
Get-Counter

# Let's filter down to the % disk time metric
$MetricValue = ((Get-Counter).CounterSamples | ? Path -match 'Processor').CookedValue

#Write-CWMetricData -Namespace TrevorSullivan

$Metric = [Amazon.CloudWatch.Model.MetricDatum]::new()

$Metric.MetricName = '% Processor Time'
$Metric.Value = $MetricValue
$Metric.TimestampUtc = [datetime]::UtcNow
$Metric.StorageResolution = 1
$Metric.Unit = 'Percent'

Write-CWMetricData -Namespace TrevorSullivan -MetricData $Metric