#!/usr/bin/env bash

##### pipenv aliases #####

alias pipe="cd $PIPFILE_DIR && pipenv "$@" && cd $OLDPWD"
