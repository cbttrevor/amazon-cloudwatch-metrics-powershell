Get-AWSCmdletName -Service CloudWatch | ? ServiceName -eq 'Amazon CloudWatch' | ? CmdletName -match metric

# Looks like we want the Get-CWMetricData command
Get-Help -Name Get-CWMetricData

Get-CWMetricStatistic -Namespace TrevorSullivan -MetricName '% Processor Time' -StartTime ([DateTime]::UtcNow.AddMinutes(-5)) -EndTime ([datetime]::UtcNow) 

