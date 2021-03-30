#!/bin/bash

date=$(date +"%d/%m/%Y_%H:%M:%S")
tar -zcpf /home/devops/$date.tar.gz /home/artem
