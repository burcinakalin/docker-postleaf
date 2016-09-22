# About

This is the Git repository of the Postleaf Docker Image.


## Environments

* If you want run the image, you can use environment variables below:

`PL_DB_HOST` : Database hostname (default: localhost)

`PL_DB_PORT`: Database port (default: 3306)

`PL_DB_NAME`: Database name (default: postleaf)

`PL_DB_USER`: Database username (default: postleaf)

`PL_DB_PASS`: Database user password (default: postleaf)

`PL_DB_INIT`: Database initilization (default: false)

`PL_DB_PREFIX`: Database prefix (default: postleaf_)


## Usage

* If you have a empty database for postleaf, you can use PL_DB_INIT=true.

```
docker run -d -p 80:80 -e PL_DB_HOST=<db_host> -e PL_DB_IT=true burcina/docker-postleaf
```

* if you have a database with postleaf tables. You don't need to use this environment.

```
docker run -d -p 80:80 -e PL_DB_HOST=<db_host>  burcina/docker-postleaf
```


## Testing

* You can use `/postleaf` url to entering postleaf.

`http://localhost/postleaf`

* You can use `/postleaf/admin` url to entering admin panel.

`http://localhost/postleaf/admin`

* You can use username and password below for loggin as admin.

`username` : administrator

`password` : admin12345


## Todo

* Make admin username and password adjustable.
* Make hardening to image.
* Make nginx/caddy spesific image.
* Test with postgresql.
* Move this repo to upstream :)

