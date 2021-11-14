## Setup env
```shell
$ export GREENLIGHT_DB_DSN='postgres://greenlight:@localhost/greenlight?sslmode=disable'
```

## Database migration
```shell
# install migrate tool
$ brew install golang-migrate  

# check migrate version
$ migrate -version

# creat movies migration table
$ migrate create -seq -ext=.sql -dir=./migrations create_movies_table

# create migration file for adjust column
$ migrate create -seq -ext=.sql -dir=./migrations add_movies_check_constraints

# run migration
$ migrate -path=./migrations -database=$GREENLIGHT_DB_DSN up

# (optional) check migration
$ migrate -path=./migrations -database=$GREENLIGHT_DB_DSN version

# (optional) goto specific version
$ migrate -path=./migrations -database=$GREENLIGHT_DB_DSN goto 1

# (optional) if there's any error in migration, fixed the error and force update version
$ migrate -path=./migrations -database=$GREENLIGHT_DB_DSN force 1
```
