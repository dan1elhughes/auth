# `auth.sh`

A small shellscript for use as an AuthorizedKeyCommand to support authentication into SSH servers from GitHub's authorized key list.

For use in internally accessible LAN servers only.

## Usage:

Get the script:

```sh
# Fetch the script into `/usr/local/bin`:
$ sudo wget https://raw.githubusercontent.com/dan1elhughes/auth/master/auth.sh -O /usr/local/bin/auth

# Enable the script
$ sudo chmod 755 /usr/local/bin/auth
```

In `/etc/ssh/sshd_config`, add:

```
AuthorizedKeysCommand /usr/local/bin/auth
AuthorizedKeysCommandUser nobody
```

Restart SSH:

```
$ sudo service sshd restart
```
