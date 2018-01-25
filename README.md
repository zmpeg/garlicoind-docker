
# garlicoind-docker

Automated Docker Hub Build for Garlicoin Daemon

## Running

Be sure to mount /root/.garlicoin with the -v flag. If you have trouble use the run-container script from github. Sample run command:

    # Regular docker command:
    mkdir data
    docker run -v `pwd`data:/root/.garlicoin zmpeg/garlicoind

    # Using helper script from github:
    mkdir data
    bin/run-container.sh

## Building

    # Regular docker command:
    docker build -t zmpeg/garlicoind

    # Using helper script:
    bin/build-container.sh

## Todo

Need to get the github repo to auto update from the official garlicoin org repo. This will trigger the automated builds.
