# Flaskapp

> Demonstrate how to run Flask app in in a Docker container.

## Getting started

The following section describes how to run Flask code in a Docker container.

1. Install Docker program.

   Follow the instructions on the [Get Docker](https://docs.docker.com/get-docker/) Docker documentation page.


1. Get this code on your laptop.

   ```
   git clone git@github.com:mbigras/flaskapp.git
   cd flaskapp
   ```

1. Build a Docker image.

   ```
   docker build --tag flaskapp .
   ```

1. Run a Docker container.

   ```
   docker run -e PORT=8080 -p 8080:8080 flaskapp
   ```

1. Good job! You built a Docker image and ran a Docker container.
