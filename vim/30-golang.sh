#!/usr/bin/env bash

export GOPATH=$HOME/go
sudo go install std
go get -u github.com/jstemmer/gotags
go get -u github.com/nsf/gocode
