```bash
#!/user/bin/expect -f

set username "Cisco"
set password "test1234"
set enable_password "enable password"
set device_ip "x.x.x.x"

# Spawn SSH sesseion to device

spawn ssh $username@$device_ip

expect "PASSWORD:"
send "$password\r"

# Expect prompt for enable password and send enable password
expect "> "
send "enable\r"
expect "Password:"
send "$enable_password\r"

# Send commands to the device
expect "# "
send "show running-config\r"
expect "# "
send "exit\r"
```

```bash
#!/user/bin/expect -f

set username "Cisco"
set password "test1234"
#set enable_password "enable password"
set device_ip "x.x.x.x"

# Spawn SSH sesseion to device

spawn ssh $username@$device_ip

expect "PASSWORD:"
send "$password\r"

# Expect prompt for enable password and send enable password
expect "> "
send "enable\r"
expect "#"
send "conf t\r"
expect "(config)#"
send "banner motd $\r"
send ""


```