## About this repo


This is the Git repo of the Docker image for Postleaf.

If you want execute the image, you can use environment variable:

`PL_DB_HOST` : hostname
`PL_DB_PORT`: port
`PL_DB_NAME`: mysql names
`PL_DB_USER`: user name
`PL_DB_PASS`: user password

If you have to database, you can use the PL_DB_INIT environment. -> `PL_DB_INIT`=false

Even you do not need to write PL_DB_INIT because the PL_DB_INIT default is false.


If you do not use PL_DB_INIT environment, this command run ->

mysql -h ${PL_DB_HOST} -u ${PL_DB_USER} -p${PL_DB_PASS} ${PL_DB_NAME} < /var/www/html/postleaf/postleaf.sql

so you must use `PL_DB_HOST`, `PL_DB_USER`, `PL_DB_PASS`, `PL_DB_NAME` environments.

* The basic command that can be executed:

`docker run -d -p 8000:80 -e PL_DB_HOST=---.---.-.-- -e PL_DB_PASS=12345 -e PL_DB_IT=true post`

home page :
`localhost:8000/postleaf`

## To Do

if you enter to link,

`localhost:8000/postleaf/admin`

default variable for input

username: administrator
password: admin12345

* this admin panel make adjustable.
