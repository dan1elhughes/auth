# `auth.sh`

A small shellscript for use as an AuthorizedKeyCommand to support authentication into SSH servers from GitHub's authorized key list.

For use in internally accessible LAN servers only.

## Usage:

In `/etc/ssh/sshd_config`, add:

```
AuthorizedKeysCommand /usr/local/bin/auth.sh
AuthorizedKeysCommandUser nobody
```
