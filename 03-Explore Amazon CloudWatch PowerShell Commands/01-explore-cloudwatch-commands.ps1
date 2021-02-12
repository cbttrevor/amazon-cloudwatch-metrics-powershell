# Find all PowerShell commands to interact with Amazon CloudWatch
# CloudWatch is ambiguous across multiple services (logs, events, )
Get-AWSCmdletName -Service 'Amazon CloudWatch' | ? ServiceName -eq 'Amazon CloudWatch'

# Interactively filter commands depending on what specific API you're calling
Get-AWSCmdletName -Service 'Amazon CloudWatch' | ? ServiceName -eq 'Amazon CloudWatch' | Out-ConsoleGridView