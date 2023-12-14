# go-sample

## Simple container application written in golang

This application is super simple application.
This application would be packaged into a container for test and production.

## To develop application

Run `./dev-app.sh`, then a container that has golang environment and mounts this directory will be ran. Then edit source files or modify it. To execute commands related golang, run it in container.

## To build application

Run `./build-app.sh`, then a container that has golang environment and mounts this directory will be ran. Then app will be built in container and output will be in `build` directory.

## To build container

Run `./build-container.sh`.

### For proxy user

Set environment variables `HTTP_PROXY` or `HTTPS_PROXY` as proxy server.
And set `PROXY_CERT` as certificate for Man in The Middle type proxy, if you need.

## To run container built as above

Run `./run-container.sh` then access `http://localhost:8080`.
