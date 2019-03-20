## docker-in-vagrant

This will set up a VM with docker and docker-compose installed.

### Filesystem events

In order to get filesystem notifications please install the following vagrant
plugin (on the host):

    $ vagrant plugin install vagrant-notify-forwarder
    $ vagrant reload # If you have already started the VM

It works out of the box. It also has some [configuration options](https://github.com/mhallin/vagrant-notify-forwarder) if you want to
change the default behavior.
