# 10 Corporate Real-Time Shell Scripts

This repository contains a collection of 10 essential shell scripts for DevOps and system administration tasks. These scripts cover backups, monitoring, health checks, and system maintenance.

## Scripts Overview

### 1. Backup Script
**File:** `backup_script.sh`
This script creates a backup of a source directory to a destination with a timestamped folder.
- **SOURCE**: The directory to be backed up.
- **DESTINATION**: The directory where the backup will be stored.
- **DATE**: Captures the current date and time to create a unique backup folder.

### 2. Disk Usage Check Script
**File:** `disk_usage_check.sh`
Checks disk usage and warns if usage of any partition exceeds a specified threshold.
- **THRESHOLD**: Sets the disk usage percentage threshold (default 80%).
- **df -H**: Lists disk usage in human-readable format.
- Filters out unnecessary filesystems (tmpfs, cdrom) and checks usage percentage.

### 3. Service Health Check Script
**File:** `service_health_check.sh`
Checks if a specific service (e.g., nginx) is running. If not, it attempts to start the service.
- **SERVICE**: The name of the service to check.
- **systemctl is-active**: Checks if the service is running.
- **systemctl start**: Starts the service if it is down.

### 4. Network Connectivity Check Script
**File:** `network_connectivity_check.sh`
Pings a host to check network connectivity and logs the result to a file.
- **HOST**: The hostname to check (e.g., google.com).
- **OUTPUT_FILE**: The file to write the output to.
- **ping -c 1**: Pings the host once.

### 5. Database Backup Script
**File:** `database_backup.sh`
Performs a MySQL database backup using `mysqldump`.
- **DB_NAME**: The name of the database to back up.
- **BACKUP_DIR**: The directory where the backup will be stored.
- **mysqldump**: Usage of the mysqldump command to export the database to a `.sql` file.

### 6. System Uptime Check Script
**File:** `system_uptime_check.sh`
Displays the system uptime in a human-readable format.
- **uptime -p**: Pretty print system uptime.

### 7. Listening Ports Script
**File:** `listening_ports.sh`
Lists all open ports and associated services.
- **netstat -tuln**: Lists TCP and UDP listening ports numerically.
- **grep LISTEN**: Filters for listening sockets.

### 8. Automatic Package Updates Script
**File:** `auto_package_updates.sh`
Updates system packages and cleans up unnecessary files.
- **apt-get update**: Updates package lists.
- **apt-get upgrade**: Upgrades installed packages.
- **apt-get autoremove**: Removes unused dependencies.
- **apt-get clean**: Cleans the package cache.

### 9. HTTP Response Times Script
**File:** `http_response_times.sh`
Checks the response time for a list of URLs using `curl`.
- **URLS**: Array of URLs to check.
- **curl -w '%{time_total}'**: Measures the total time taken for the request.

### 10. Monitor System Processes and Memory Usage Script
**File:** `monitor_memory_usage.sh`
Lists the top 10 processes consuming the most memory.
- **ps aux --sort=-%mem**: Lists processes sorted by memory usage descending.
- **head -n 10**: Shows the top 10 lines.

## Usage
Ensure the scripts are executable before running them. You can make them executable using:
```bash
chmod +x *.sh
```
Run a script by executing:
```bash
./script_name.sh
```
