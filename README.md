# dockpot_ssh

Very simple SSH honeypot that allows you to see failed login attempts and bash history.

This is a test for a future project.

Bash history can be found in the ./home whilst the auth log can be found in ./log.

## Usage
To run download the repository and in that directory issue the following commands.

```
$ sudo docker build . -f Dockerfile -t dockpot_ssh:latest
$ sudo docker run -it -p 22:22 -d -v `pwd`/log/auth.log:/var/log/auth.log -v `pwd`/home/:/home/admin/ --name dockpot_container
```

## Info
The default username and password is `admin:password` this can be changed in the Dockerfile. be sure you change all instances of the username if you change it (in the docker commands etc).

Add the arguments `--restart unless-stopped` to the docker run command if you want the container to run until stopped even if it "crashes".
