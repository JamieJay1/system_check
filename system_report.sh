
# !/bin/bash
mkdir -p "$HOME/git/sys_check"
log_file="$HOME/git/sys_check/system_report.log" 
{
	echo "==========================================================="
	echo "			System Health Report"
	echo "==========================================================="


	echo "System Check - $(date)"
	echo "Uptime:"
	uptime
	echo "Disk Space:"
	df -h 
} >> $log_file 
