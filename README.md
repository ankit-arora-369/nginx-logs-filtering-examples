# nginx-logs-filtering-examples

Basic bash scripts to filter out data from apache2 log files.

## Getting Started

All scripts accept the path to file as an argument and gives the output after filtering the input.

### Prerequisites

```
apache2 log file containing logs on a linux server.

```

### Changing modes

Grant execute permissions to all the scripts using the following command:

```
chmod +x *.sh
```


#### 1. To list the top 5 unique IP addresses accessing your Apache webserver.

```
bash unique_ips.sh <path/to/file>
```


#### 2. To list the past 10-days 4XX results of Apache's access log file, sorted by date with their IP address.

```
bash 4xx_result.sh <path/to/file>
```


#### 3. To view the top 10 disk-space usage of a perticular path across multiple hosts(enter IPs of host in servers.txt file).

```
bash disk_usage.sh <path/to/folder>
```
