
# Laboratory 09 – Cloud Automation Engineer



## 1. Mission Overview

This laboratory activity focuses on automating server tasks using Bash scripting and the Linux Cron scheduler. I created a sample application data folder, wrote a Bash script to compress and back up the data, assigned executable permissions, and configured a cron job to run the backup every night at 2:00 AM.

## 2. Objectives

- Understand the basic syntax of Bash scripts.
- Use variables to store folder paths and timestamps.
- Create and execute a backup script using Nano.
- Modify file permissions using `chmod`.
- Compress application data into a `.tar.gz` archive.
- Schedule automatic tasks using Linux cron.
- Document automation procedures using Markdown.
- Expand the GitHub Cloud Computing portfolio.

## 3. Commands Executed

### Create Sample Application Data

```bash
mkdir -p app-data
echo "This is critical client data." > app-data/data.txt
```

###  Create and Edit the Backup Script

```bash
nano backup.sh
```

###  Set Permissions and Execute the Script

```bash
./backup.sh
chmod +x backup.sh
./backup.sh
ls -l backups/
```

### Configure the Cron Job

```bash
crontab -l
env EDITOR=nano crontab -e
```

Cron schedule:

```cron
0 2 * * * /root/backup.sh
```

Verify the installed schedule:

```bash
crontab -l
```

##  Skills Learned

- Writing Bash shell scripts.
- Using variables and timestamps in automation.
- Creating compressed backup archives with `tar`.
- Managing Linux file permissions using `chmod`.
- Scheduling repetitive tasks with cron.
- Verifying backup files and cron configurations.
- Using Nano to edit Linux configuration files.
- Writing technical documentation in Markdown.
- Maintaining a GitHub cloud computing portfolio.

