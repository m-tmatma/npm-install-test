#!/bin/sh

docker run -t npm-install-test bash -c 'export XDG_CONFIG_HOME=/work && export NVM_DIR="$XDG_CONFIG_HOME/nvm" && . "$NVM_DIR/nvm.sh" && which uglifyjs'
