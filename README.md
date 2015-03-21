# Pizaid server playbook

## Prerequiste

* vagrant
* ansible

## Before provision

To enable accessing to github.com,
you should add your secret ssh key to ssh-agent.

```
$ ssh-add [path_to_your_secret_key]
$ ssh-add -l      # confirm that your key for github.com is added
```

## setup your VM for development

First, you should clone this repository.

```
$ git clone https://github.com/Pizaid/pizaid-playbook.git
```

Second, create VM and run provision.

```
$ vagrant up pizaid
$ vagrant provision pizaid
```

That's all.

## setup your Raspberry pi

Confirm you can `ssh` to your Rasberry pi.

First, change the user name in group_vars/pizaid.yml like this:

```
#user: "vagrant"
user: "pi"
```

Second, change the IP address of your Raspberry pi in hosts:

```hosts
[pizaid]
#192.168.33.20
156.xx.yyy.zz
```

Then, run the playbook after you confirm the connection:

```
$ ansible -i hosts pizaid -m ping
156.xx.yyy.zz | success >> {
  "changed": false,
  "ping": "pong"
}
$ ansible-playbook -i hosts site.yml
```

But I haven't tested it on Raspberry pi yet, so there may be some bugs ...
