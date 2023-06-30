# Python Dockerized

This is a basic project template for creating a Docker container for Python 3 applications.

## Usage

To build the Docker image, execute the build script `./docker/build.sh`. This script runs the docker build command for the `Dockerfile`.

The `Dockerfile` sets some reasonable ENV vars within the docker image for running python modules, creates a user that can ensures the container does not run as root user, installs the dependencies listed in the files `requirements.txt` and `./pyproject.toml` and also ensures the module is run on the startup of the image.

Once the image is built, you can run the container using the provided run command. The module `my_module` will run automatically.

## Environment Variables

The project utilizes an .env file stored in the root directory to bring variables into the dockerized Python script. This file allows you to define and manage environment-specific configurations and settings.

To use the .env file, make sure it is located in the root directory of the project. Inside the file, you can define variables in the format KEY=VALUE, where each line represents a separate variable.

For example:

```shell
someValue="MyValue"
```

Within your Python script, you can access these environment variables using the appropriate method provided by the chosen library (such as os.environ).

Remember to keep sensitive information, such as passwords or access keys, secure by not committing the .env file to version control.

Feel free to customize the project according to your specific needs and requirements.
