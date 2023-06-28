# Python Dockerized

This is a basic project template for creating a Docker container for Python 3 applications.

## Usage

To build the Docker image, navigate to the `docker` directory and execute the build script. This script will automatically install the dependencies listed in the `requirements.txt` file and proceed to install the entire Python module.
Once the image is built, you can run the container using the provided run command.

## Environment Variables
The project utilizes an .env file stored in the root directory to bring variables into the dockerized Python script. This file allows you to define and manage environment-specific configurations and settings.

To use the .env file, make sure it is located in the root directory of the project. Inside the file, you can define variables in the format KEY=VALUE, where each line represents a separate variable.

For example:

```
someValue="MyValue"
```

Within your Python script, you can access these environment variables using the appropriate method provided by the chosen library (such as os.environ).

Remember to keep sensitive information, such as passwords or access keys, secure by not committing the .env file to version control.

Feel free to customize the project according to your specific needs and requirements.
