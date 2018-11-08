# Automatic-IP-Address-Publish
A shell script to automatically publish your public WAN IP address to the internet.

To automate this you can trigger this script on schedule by entering the following in to your crontab:

```*/30 * * * * bash /script/path/publish-ip.sh```

Replacing /script/path/ with the absolute path to the script file.

The following example would publish your IP every 30 minutes.
