
logs_path="/usr/local/srs/tomcat-8080-rtmp/logs"

find $logs_path -mtime +30 -name "localhost.*.log" -exec rm -rf {} \;
find $logs_path -mtime +30 -name "localhost_access_log.*.txt" -exec rm -rf {} \;
find $logs_path -mtime +30 -name "catalina.*.log" -exec rm -rf {} \;
find $logs_path -mtime +30 -name "manager.*.log" -exec rm -rf {} \;
find $logs_path -mtime +30 -name "host-manager.*.log" -exec rm -rf {} \;
find $logs_path -mtime +30 -name "fileservice.log.*" -exec rm -rf {} \;
>$logs_path/catalina.out;

