# !/bin/bash

log_dir="logs"
log_file="$log_dir/service_logs"

command=$1

case "$command" in
	start)
		sudo systemctl start nginx 
		echo "$(date): nginx started" >>"$log_file"
		;;
	stop)
		sudo systemctl stop nginx 
		echo "$(date): nginx stopped" >>"$log_file"
		;;
	status)
		sudo systemctl status nginx 
		echo "$(date): nginx status checked" >>"$log_file"
		;;
	*)
		echo  "Usage: $0 {start|stop|status}"
		exit 1
		;;
esac
