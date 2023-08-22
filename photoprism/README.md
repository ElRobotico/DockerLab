# Photoprism

A complete service to manage your photo and video

## How to use admin user without expose the password in compose file
### 1. Env File
The best way is to use an .env file to not expose the password in the compose file
### 2. Cli Command
Alternatively you can remove the environment about the admin user and account from the docker-compose.yml and then create the user by the CLI command. In two way:
#### Inside the container
The command to create a the user is: `photoprism users add username` the follow the instruction given by the terminal to complete the process
#### Directly outside the container
'docker compose exec photoprism photoprism users add -p mysecret -n "Bob" bob'
### 3. Changing password after installation
