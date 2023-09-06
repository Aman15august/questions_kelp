# Write a bash script to backup /home folder, compress it and copy it to a remote server. It should send an email with the status of backup.
#!/bin/bash
# Configuration
source_dir="/home"                          
backup_dir="/backup"                        
remote_server="172.31.10.11" 
remote_dir="/home"        
email_recipient="amansingh13611@gmail.com"   
email_subject="Backup Status"

# Timestamp 
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_filename="backup_$timestamp.tar.gz"

# Backup the /home directory
echo "Backing up $source_dir to $backup_dir/$backup_filename..."
tar -czf "$backup_dir/$backup_filename" "$source_dir"

# Copy 
echo "Copying backup to remote server..."
scp "$backup_dir/$backup_filename" "$remote_server:$remote_dir"

#  exit status of scp
if [ $? -eq 0 ]; then
    status="Backup Successful"
else
    status="Backup Failed"
fi

# email with the backup status
echo "Sending email notification..."
echo "$status" | mail -s "$email_subject" "$email_recipient"

echo "Backup process completed."

