### Step 1: Update the Package Manager

Before installing new software, update the software repository list with the following command:

```bash
sudo apt-get update
```

### Step 2: Install SSH Server

On the system that acts as a server, run the following command:

```bash
sudo apt install openssh-server
```

You can check the status of the SSH service with the following command:

```bash
sudo systemctl status ssh
```

The system confirms that the SSH service is running.

### Step 3: Start and Stop the SSH Server

Since SSH controls connections, it can be handy to know how to start and stop the service.

To stop the SSH host server, enter the following:

```bash
sudo service ssh stop
```

If you check the status of the service at this point the system indicates that SSH is inactive. It also indicates the exact date and time it stopped.

To start the SSH service, use the following command:

```bash
sudo service ssh start
```

Stopping the service only lasts until the next reboot.

To turn off SSH indefinitely, enter:

```bash
sudo systemctl disable ssh
```

To re-enable the SSH service, simply replace disable with enable.