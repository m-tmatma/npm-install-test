FROM ubuntu:18.04

# https://www.linode.com/docs/guides/how-to-install-use-node-version-manager-nvm/
# https://github.com/nvm-sh/nvm/blob/d1a22a63bd38c0392393044354297e5ca02bc0cf/README.md#additional-notes
# https://www.npmjs.com/package/uglify-js

# Run this on docker container
#   export XDG_CONFIG_HOME=/work &&
#   export NVM_DIR="$XDG_CONFIG_HOME/nvm" &&
#   . "$NVM_DIR/nvm.sh"
#   which uglifyjs

RUN apt update && apt install -y curl
RUN export XDG_CONFIG_HOME=/work && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash && \
    export NVM_DIR="$XDG_CONFIG_HOME/nvm" && \
    . "$NVM_DIR/nvm.sh" && \
    nvm install 13.10.1 && \
    npm install uglify-js -g
