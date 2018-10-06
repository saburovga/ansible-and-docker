#!/bin/bash
/usr/bin/echo "<head><title>System Information</title><head>"
/usr/bin/echo "<body><h1>This system has following resources:</h1>"
/usr/bin/echo -n "<h3></br>number of processors: "
/usr/bin/cat /proc/cpuinfo | /usr/bin/grep "processor"|wc -l
/usr/bin/echo -n "</br>amount of RAM in bytes: "
/usr/bin/free|/usr/bin/grep Mem:|/usr/bin/awk '{print $2}'
/usr/bin/echo -n "</br>amount of disk space in megabytes: "
/usr/bin/df -h|/usr/bin/grep overlay|/usr/bin/awk '{print $2}'
/usr/bin/echo "</h3></body>"