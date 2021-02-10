#!/bin/sh

playbook=$1

if [ -z "$2" ]
then
  echo "No requirements specified."
else
  requirements=$2
  echo "Installing galaxy requirements '${requirements}'."
  ansible-galaxy install -r ${requirements}
fi

echo "Executing playbook '${playbook}'."
ansible-playbook $playbook
