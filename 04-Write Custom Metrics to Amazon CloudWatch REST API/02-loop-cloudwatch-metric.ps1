while ($true) {

    $MetricValue = ((Get-Counter).CounterSamples | ? Path -match 'Processor').CookedValue
    $MetricValue2 = ((Get-Counter).CounterSamples | ? Path -match 'Processor').CookedValue + 1
    Write-Host -ForegroundColor Green -Object $MetricValue
    Write-Host -ForegroundColor Blue -Object $MetricValue2
    
    $Metric = [Amazon.CloudWatch.Model.MetricDatum]::new()
    
    $Metric.MetricName = '% Processor Time'
    $Metric.Value = $MetricValue
    $Metric.TimestampUtc = [datetime]::UtcNow
    $Metric.StorageResolution = 1
    $Metric.Unit = 'Percent'
    
    $Metric2 = [Amazon.CloudWatch.Model.MetricDatum]::new()
    
    $Metric2.MetricName = '% Processor Time'
    $Metric2.Value = $MetricValue2
    $Metric2.TimestampUtc = [datetime]::UtcNow
    $Metric2.StorageResolution = 1
    $Metric2.Unit = 'Percent'
    
    Write-CWMetricData -Namespace TrevorSullivan -MetricData $Metric, $Metric2

    Start-Sleep -Milliseconds 500
}
