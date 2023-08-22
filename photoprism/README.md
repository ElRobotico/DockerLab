# Photoprism
A complete service to manage your photo and video, follow the instruction below to manage the admin user

## How to use admin user without expose the password in compose file
### 1. Env File
The best way is to use an .env file to not expose the password in the compose file
### 2. Cli Command
Alternatively you can remove the environment about the admin user and account from the [docker-compose.yml](https://github.com/ElRobotico/DockerLab/blob/main/photoprism/docker-compose.yml) and then create the user by the CLI command. In two way:
#### Inside the container
The command to create a the user is: `photoprism users add -n username` the follow the instruction given by the terminal to complete the process
###### NOTE: the default user is create whit the admin role you don't need to specify them, eventualy you can use the option -s to use the superadmin role 
#### Directly outside the container
Use this command: `docker-compose exec photoprism photoprism users add -n username`.
###### NOTE: the default user is create whit the admin role you don't need to specify them, eventualy you can use the option -s to use the superadmin role 
### 3. Changing password after installation
A functional way (but not the best way) is to set a admin username and temporary password in the [docker-compose.yml](https://github.com/ElRobotico/DockerLab/blob/main/photoprism/docker-compose.yml) and then change it inside the web UI. Remember to remove these environment to avoid to re-apply the temporary credentials in a future docker commpose apply
