#Balena API Command Line Interface

This is a Docker image for the balena-cli. It is a unified command line tool to interact with Balena services and manage your device fleet.

This image is provided as is without warranty. Maintainer of this image is not in any way affiliated with Balena.
The purpose of this image is to make life easy for balena-cli users who wish to incorporate this tool into their automation pipeline.

Docker CLI usage

The balena-cli can be executed from the Docker CLI with the docker run command:

```
docker run --rm -it dooksa/balena-cli balena-cli --version
```

For any balena-cli command, you can run its help command to get help information about the command:

```
docker run --rm -it dooksa/balena-cli help
```

In order to run a command that makes an API call, authorization may be necessary. To authorize run:

```
docker run --rm -ti dooksa/balena-cli balena-cli login [BALENA_API_KEY]
```

If you're using this container as a pipeline worker place the API key in designated secret handling solution for secure storage, and use the variable as the pipeline command parameter.

For more info on balena-cli see [GitHub repository](https://github.com/balena-io/balena-cli)