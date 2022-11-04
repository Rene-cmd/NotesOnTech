## Step 1 — Installing Apache

Apache is available within Debian’s default software repositories, making it possible to install it using conventional package management tools.

Begin by updating the local package index to reflect the latest upstream changes:

```bash
sudo apt update
```

Copy

Then, install the `apache2` package:

```bash
sudo apt install apache2
```

Copy

After confirming the installation, `apt` will install Apache and all required dependencies.

## Step 2 — Checking your Web Server

At the end of the installation process, Debian 11 starts Apache. The web server should already be up and running.

Make sure the service is active by running the command for the `systemd` init system:

```bash
sudo systemctl status apache2
```


## Step 3 — Managing the Apache Process

Now that you have your web server up and running, let’s review some basic management commands using `systemctl`.

To stop your web server, run:

```bash
sudo systemctl stop apache2
```

Copy

To start the web server when it is stopped, run:

```bash
sudo systemctl start apache2
```

Copy

To stop and then start the service again, run:

```bash
sudo systemctl restart apache2
```

Copy

If you are only making configuration changes, Apache can often reload without dropping connections. To do this, use the following command:

```bash
sudo systemctl reload apache2
```

Copy

By default, Apache is configured to start automatically when the server boots. If this is not what you want, disable this behavior by running:

```bash
sudo systemctl disable apache2
```

Copy

To re-enable the service to start up at boot, run:

```bash
sudo systemctl enable apache2
```

Copy

Apache will now start automatically when the server boots again.

Create the directory for **your_domain** as follows:

```bash
sudo mkdir -p /var/www/your_domain
```

Copy

Next, assign ownership of the directory to the user you’re currently signed in as with the `$USER` environment variable:

```bash
sudo chown -R $USER:$USER /var/www/your_domain
```

Copy

The permissions of your web roots should be correct if you haven’t modified your `umask` value, which sets default file permissions. To ensure that your permissions are correct and allow the owner to read, write, and execute the files while granting only read and execute permissions to groups and others, you can input the following command:

```bash
sudo chmod -R 755 /var/www/your_domain
```

Copy

Next, create a sample `index.html` page using your preferred text editor. Here, we’ll use `nano`:

```bash
nano /var/www/your_domain/index.html
```

Copy

Inside, add the following sample HTML:

/var/www/your_domain/index.html

```html
<html>
    <head>
        <title>Welcome to your_domain!</title>
    </head>
    <body>
        <h1>Success!  The your_domain virtual host is working!</h1>
    </body>
</html>
```

Save and close the file when you are finished. If you’re using `nano`, you can do this by pressing `CTRL + X`, then `Y` and `ENTER`.

In order for Apache to serve this content, it’s necessary to create a virtual host file with the correct directives. Instead of modifying the default configuration file located at `/etc/apache2/sites-available/000-default.conf` directly, make a new one at `/etc/apache2/sites-available/your_domain.conf`:

```bash
sudo nano /etc/apache2/sites-available/your_domain.conf
```

Copy

Insert the following configuration block, which is similar to the default, but updated for your new directory and domain name:

/etc/apache2/sites-available/your_domain.conf

```bash
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerName your_domain
    ServerAlias www.your_domain
    DocumentRoot /var/www/your_domain
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

Notice that we’ve updated the `DocumentRoot` to our new directory and `ServerAdmin` to an email that the **your_domain** site administrator can access. We’ve also added two directives: `ServerName`, which establishes the base domain that will match this virtual host definition, and `ServerAlias`, which defines further names that will match as if they were the base name.

Save and close the file when you are finished.

Now enable the file with the `a2ensite` tool:

```bash
sudo a2ensite your_domain.conf
```

Copy

Disable the default site defined in `000-default.conf`:

```bash
sudo a2dissite 000-default.conf
```

Copy

Next, test for configuration errors:

```bash
sudo apache2ctl configtest
```

Copy

You should receive the following output:

```bash
OutputAH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress this message
Syntax OK
```

Restart Apache to implement your changes:

```bash
sudo systemctl restart apache2
```

Copy

Apache will now be serving your domain name. You can test this by navigating to `http://your_domain`, where you will see something like the following:

![Apache virtual host example](https://assets.digitalocean.com/articles/apache_virt_hosts_1404/example.png)

kom tilbage til hovedfilen.
[[1. Server Linux]]