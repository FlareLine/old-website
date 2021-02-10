#!/bin/sh

if [ -z "$requirements" ]
then
  echo "No requirements specified."
else
  echo "Installing galaxy requirements '${requirements}'."
  ansible-galaxy install -r ${requirements}
fi

echo "Executing playbook '${playbook}'."
ansible-playbook $playbook
