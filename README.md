# Redash

This Redash works one container.

# docker run

You can run container from Docker Hub or Build Image.

## from Docker Hub

This version is 3.0.0+b3134

```
$ docker run -d -p 8125:80 --name redash maedamikio/redash
```

## from Build Image

```
$ git clone git@github.com:maedamikio/redash.git
$ cd redash
$ docker build -t redash .
$ docker run -d -p 8125:80 --name redash redash
```

# Sign In

```
http://localhost:8125/
```

# Authors

* **MAEDA Mikio** - [Twitter](https://twitter.com/maeda_mikio)
