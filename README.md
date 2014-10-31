# Pizaid server playbook

## Prerequiste

* vagrant
* ansible

## setup your VM for development

First, you should clone this repository.

```
$ git clone https://github.com/Pizaid/pizaid-playbook.git
```

Second, run provision.

```
$ vagrant up pizaid
$ vagrant provision pizaid
```

That's all.

## setup your Raspberry pi

First, change the user name in group_vars/pizaid.yml like this:

```
#user: "vagrant"
user: "pi"
```

Second, change the IP address of your Raspberry pi in hosts file:

Then, run the playbook after you confirm the connection:

```
$ ansible -i hosts pizaid -m ping
192.168.33.20 | success >> {
  "changed": false,
  "ping": "pong"
}
$ ansible-playbook -i hosts site.yml
```

But I haven't tested it on Raspberry pi yet, so there may be some bugs ...
