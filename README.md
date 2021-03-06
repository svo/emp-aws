# EMP AWS

The purpose of this project is to provide mechanisms for developing, testing and deploying EMP AWS.

Main Project Repository:

* [Server](https://github.com/svo/emp)

__NOTES:__ this project uses git submodules so you will want to clone recursively to have all expected behaviours.

```
git clone --recursive git@github.com:svo/emp-aws.git
```

## Setup

Requirements:
- Vagrant (tested with version: 1.9.3)
- VirtualBox (tested with version: 5.1.18 r114002)
- Ansible (tested with version: 2.1.1.0)

Setup environment by using the following: `vagrant up`

## Development

```
vagrant ssh
cd /vagrant
```

## Testing

```
vagrant ssh
cd /vagrant
./pre-commit.sh
```

Jenkins builds on commits and is available at: http://vagrant-emp-aws-ci.local:8080/

## Build AWS Instance

```
vagrant ssh
aws configure
cd /vagrant/terraform
terraform apply
```

## Provisioning

### Provision Instance

```
vagrant ssh
cd /vagrant
./provision.sh <path-to-private-key> <ip-for-instance>
```
