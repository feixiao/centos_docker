#!/bin/bash

__create_user() {
# Create a user to SSH into as.
useradd frank 
SSH_USERPASS=1
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin frank)
echo ssh frank password: $SSH_USERPASS
}

# Call all functions
__create_user
