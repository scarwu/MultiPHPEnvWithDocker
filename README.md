# Multi-PHP Environments with Docker

## Build Docker Images

~~~
./docker/images.sh build
~~~

## Services

~~~
# Start
docker-compose up -d

# Stop
docker-compose down --remove-orphans
~~~

## Try Multi-PHP Envs

Open your browser with following links.

~~~
# PHP 5.6
http://localhost/php56

# PHP 7.0
http://localhost/php70

# PHP 7.1
http://localhost/php71

# PHP 7.2
http://localhost/php72
~~~
