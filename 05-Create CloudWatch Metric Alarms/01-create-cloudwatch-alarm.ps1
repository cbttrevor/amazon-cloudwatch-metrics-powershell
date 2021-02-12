# Filter down to PowerShell commands that deal with Amazon CloudWatch alarm resources
Get-AWSCmdletName -Service CloudWatch | ? ServiceName -eq 'Amazon CloudWatch' | ? CmdletName -match alarm

Write-CWMetricAlarm

# ERROR: Generic types are not supported for input fields at this time

$Alarm = @{
    AlarmName = 'TrevorCPUTime'
    AlarmDescription = 'Alerts when CPU time exceeds 10%'
    Namespace = 'TrevorSullivan'
    MetricName = '% Processor Time'
    EvaluationPeriod = 3
    ComparisonOperator = 'GreaterThanOrEqualToThreshold'
    Threshold = 10
    Period = 10
    Statistic = 'Average'
    Unit = 'Percent'
}
Write-CWMetricAlarm @Alarm

# Find and clean up alarms

Get-CWAlarm

Remove-CWAlarm -AlarmName TrevorDiskTime -Force