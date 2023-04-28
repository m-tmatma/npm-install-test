# Explain how to resolve "`GLIBC_2.28' not found error" on old platform.

Demonstrate how to reolve "`GLIBC_2.28' not found error" by installing old node.js by nvm.


## build docker image

```
$ ./build.sh
```

## run docker container (show path of uglifyjs on docker container)

```
$ ./show.sh
```



## how to see the error

Change Docker image and built it.

```
$ git diff
diff --git a/docker/Dockerfile b/docker/Dockerfile
index d5b2bd1..3bd1c3b 100644
--- a/docker/Dockerfile
+++ b/docker/Dockerfile
@@ -15,5 +15,5 @@ RUN export XDG_CONFIG_HOME=/work && \
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash && \
     export NVM_DIR="$XDG_CONFIG_HOME/nvm" && \
     . "$NVM_DIR/nvm.sh" && \
-    nvm install 13.10.1 && \
+    nvm install node && \
     npm install uglify-js -g
$ ./build.sh
```
