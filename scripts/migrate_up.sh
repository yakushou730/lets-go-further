#!/bin/zsh

GREENLIGHT_DB_DSN='postgres://greenlight:@localhost/greenlight?sslmode=disable'
migrate -path=./migrations -database=${GREENLIGHT_DB_DSN} up
