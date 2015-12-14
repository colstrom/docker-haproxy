# docker-haproxy

A TCP/HTTP reverse proxy for high availability environments

## Exposed Ports

* 5000

## Volumes

| Location       | Description
|----------------|------------
| `/etc/haproxy` | Store configuration files here

## Usage

```
docker pull colstrom/haproxy
docker run -d -P colstrom/haproxy
```

## Configuration

The configuration used in this image can be found at `example/haproxy.cfg`.

Overwrite `haproxy.cfg` at build time in a descendent image.

```
FROM colstrom/haproxy
ADD example/haproxy.cfg /etc/haproxy/
```

Alternatively, bind mount a directory containing an `haproxy.cfg` to the container at runtime:

```
docker run -d -P -v $PWD/example:/etc/haproxy colstrom/haproxy
```

## License

[MIT](https://tldrlegal.com/license/mit-license)

## Contributors

* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
