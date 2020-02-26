#!/usr/bin/env bash

cd packer
packer build -on-error=abort -force packer.json
cd output-virtualbox-iso
tar -zcvf ubuntu-16.04-docker.box *.ovf *.vmdk
cd ../..
cd terraform
rm -rf ~/.terraform/virtualbox/gold/ubuntu-16.04-docker
