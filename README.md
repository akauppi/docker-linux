# Linux

Simple repo to help use Docker for occasional Linux access (on macOS).

## Requirements

- Docker

## Setting up Docker

```
$ export MACHINE=linux
$ docker-machine create --driver virtualbox $MACHINE
```

```
$ docker-machine start $MACHINE
$ eval $(docker-machine env $MACHINE)
```

## Building

```
$ export IMAGE=linuxi
$ docker build -t $IMAGE .
```

## Running

```
$ docker run -it $IMAGE /bin/bash
```

Try `sudo whoami` - password is "user".

The environment is cleared at every re-launch - that's part of the purpose. See reference, or edit `Dockerfile` to have consistent changes.


## References

- StackOverflow > [I lose my data when container exits](http://stackoverflow.com/questions/19585028/i-lose-my-data-when-the-container-exits)


