#!/bin/bash

# Define the hosts and commands
hosts=("host1.example.com" "host2.example.com" "host3.example.com")
commands=("uptime" "df -h" "free -m")

# SSH user
user="your_ssh_username"

# Log file
log_file="ssh_commands.log"

# Loop through each host and execute commands
for host in "${hosts[@]}"; do
  echo "Connecting to $host" | tee -a "$log_file"
  for cmd in "${commands[@]}"; do
    echo "Running command: $cmd" | tee -a "$log_file"
    ssh_output=$(ssh -o ConnectTimeout=10 "$user@$host" "$cmd" 2>&1)
    ssh_exit_code=$?
    if [ $ssh_exit_code -ne 0 ]; then
      echo "Error executing command '$cmd' on $host. SSH exit code: $ssh_exit_code" | tee -a "$log_file"
      echo "SSH output: $ssh_output" | tee -a "$log_file"
    else
      echo "Command output:" | tee -a "$log_file"
      echo "$ssh_output" | tee -a "$log_file"
    fi
  done
done
