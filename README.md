# Multi-version PHP Environments with Docker

## Build Docker Images

~~~
./build/run-all.sh build
~~~

## Services

~~~
# Start
docker-compose up -d

# Stop
docker-compose down --remove-orphans
~~~

## Try Multi-version PHP

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
