
# Backup Script Guide


## 1. Overview

This guide explains how the automated backup script works, how execution permissions were configured, and how a Cron job can schedule the backup process automatically.

## 2. Full Bash Script

The following is the complete code saved in `backup.sh`:

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

### How the Script Works

- `#!/bin/bash` tells Linux to execute the script using Bash.
- `SOURCE_DIR="app-data"` identifies the directory containing the data to back up.
- `BACKUP_DIR="backups"` specifies where the backup files will be stored.
- `TIMESTAMP=$(date +"%Y%m%d_%H%M%S")` generates a timestamp to make each backup filename unique.
- `mkdir -p $BACKUP_DIR` creates the backup directory if it does not already exist.
- `tar -czf` compresses the source directory into a `.tar.gz` archive.
- The `echo` commands display messages indicating the backup process.

## 3. Making the Script Executable

Initially, running the script with `./backup.sh` resulted in a permission error because the file did not have execution permission.

The following command was used:

```bash
chmod +x backup.sh
```

The `chmod` command changes file permissions, while `+x` adds execute permission. This allows the user to run the script directly using:

```bash
./backup.sh
```

After execution, the backup directory was checked using:

```bash
ls -l backups/
```

The directory should contain a compressed backup file with a timestamp in its filename, such as `backup_20261012_230000.tar.gz`.

## 4. Cron Job Configuration

The Cron expression specified for the documentation is:

```bash
0 5 * * 1 /root/backup.sh
```

This schedules the script to run automatically every Monday at 5:00 AM.

### Breakdown of the Five Time Fields

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | At minute zero |
| Hour | `5` | At 5:00 AM |
| Day of Month | `*` | Every day of the month |
| Month | `*` | Every month |
| Day of Week | `1` | Monday |

The final part, `/root/backup.sh`, is the absolute path to the script that Cron executes.

**Important:** The expression above is the one specified for this documentation. If your actual Cron entry is `0 2 * * * /root/backup.sh`, that schedules the backup every day at 2:00 AM instead. Make sure the documentation matches the schedule installed on your system.

## 5. Verification

The following commands were used to verify the script and schedule:

```bash
./backup.sh
ls -l backups/
crontab -l
```

The first command runs the backup script, the second checks the generated archive, and the third displays the installed Cron schedule.

