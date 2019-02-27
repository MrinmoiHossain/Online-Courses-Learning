Show all available services:
$ systemctl list-units -t service --all

Show only active services:
$ systemctl list-units -t service

To start (activate) one or more units:
$ sudo systemctl start foo

$ sudo systemctl start foo.service

$ sudo systemctl start /path/to/foo.service

To stop (deactivate):
$ sudo systemctl stop foo.service

Enable/disable a service:
$ sudo systemctl enable sshd.service

$ sudo systemctl disable sshd.service