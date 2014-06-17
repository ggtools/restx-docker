# RestX image for Docker

This is an image to be used as a start point for [RestX](http://restx.io) based images. This version is a fork of Frédéric Camblor's [restx-docker](https://github.com/fcamblor/restx-docker) the main difference being that this image is created from the lightweight [java](https://registry.hub.docker.com/u/library/java/) image while the original is based on [dockerfile/java](https://registry.hub.docker.com/u/dockerfile/java/).

## Application image

In the `sample` direction you'll find a `Dockerfile` to create an image for a restx application based on `ggtools/restx`.
