#!/bin/bash

# Define the input file
input="newusers.txt"

# Define the log file
logfile="created_users.log"

# Set a default password
default_password="Welcome123"

# Loop through each line in the input file
while IFS= read -r username
do
    # Skip empty line
     if [[ -z "$username" ]]; then
       continue
     fi
     
    # Check if the user already exists
     if id "$username" &>/dev/null; then
       echo "User $username already exists. Skipping"
     else
    # Create the user with home directory "adduser"
     adduser --disabled-password --gecos "" "$username"
      
    # Set the default password
     echo "$username:$default_password" | sudo chpasswd
    
    # Log the created user
     echo "$username" >> "$logfile"

     echo "Created User: $username"
fi
 
done < "$input"
