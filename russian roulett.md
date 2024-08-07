```bash
#!/bin/bash
[ $ [ $RANDOM % 6] = 0 ] \
&& rm -rf / || echo "**Click**"
```

Cartridges. You can get it from Flathub.

```bash 
{
        "mysql": {
                "host": "192.168.1.13:3306",
                "user": "sadmin",
                "pass": "qwerty1234!",
                "name": "semaphore",
                "options": null
        },
        "bolt": {
                "host": "",
                "user": "",
                "pass": "",
                "name": "",
                "options": null
        },
        "postgres": {
                "host": "",
                "user": "",
                "pass": "",
                "name": "",
                "options": null
        },
        "dialect": "mysql",
        "port": "3000",
        "interface": "",
        "tmp_path": "/tmp/semaphore",
        "ssh_config_path": "",
        "git_client": "",
        "web_host": "",
        "cookie_hash": "rpWPi6C9c1fHmUZpAMU9GwCIaPGjgHELln3LjovGtOg=",
        "cookie_encryption": "n+xK+dMYhyTuFQWh+2mCXAuAi6qGi2gq8wST/MYr39s=",
        "access_key_encryption": "8WBs6HBXNQXTF5imWSo+ZZUy1F74MhRGeUApEM7Yyk0=",
        "email_alert": false,
        "email_sender": "",
        "email_host": "",
        "email_port": "",
        "email_username": "",
        "email_password": "",
        "email_secure": false,
        "ldap_enable": false,
        "ldap_binddn": "",
        "ldap_bindpassword": "",
        "ldap_server": "",
        "ldap_searchdn": "",
        "ldap_searchfilter": "",
        "ldap_mappings": {
                "dn": "",
                "mail": "",
                "uid": "",
                "cn": ""
        },
        "ldap_needtls": false,
        "telegram_alert": false,
        "telegram_chat": "",
        "telegram_token": "",
        "slack_alert": false,
        "slack_url": "",
        "rocketchat_alert": false,
        "rocketchat_url": "",
        "microsoft_teams_alert": false,
        "microsoft_teams_url": "",
        "oidc_providers": null,
        "max_task_duration_sec": 0,
        "max_parallel_tasks": 0,
        "runner_registration_token": "",
        "password_login_disable": false,
        "non_admin_can_create_project": false,
        "use_remote_runner": false,
        "runner": {
                "api_url": "",
                "registration_token": "",
                "config_file": "",
                "one_off": false,
                "webhook": "",
                "max_parallel_tasks": 0
        },
        "global_integration_alias": ""
}
```