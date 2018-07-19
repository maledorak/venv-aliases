#!/usr/bin/env bash

##### Bash aliases #####
## Django ##
alias djmanage="python $DJANGO_MANAGE_PATH"
alias djdbshell="djmanage dbshell"
djshell() {
# Run django shell_plus or shell
  if djmanage | grep shell_plus > /dev/null; then
    djmanage shell_plus
  else
    djmanage shell
  fi
}
djt() {
# Run tests, remove # from path and check is no migration app is installed.
  test_path="$@"
  is_no_migrations=`djmanage | grep test_without_migrations`
  if [ is_no_migrations ]; then
    test_path=${test_path//[#]/.}
    djmanage test -v 3 -n $test_path
  else
    djmanage test -v 3 $test_path
  fi
}
djser() {
# Run django server with port or on default port
  port="$1"
  if [ -z "$port" ]; then
    port=0
  fi
  if [ "$port" -gt 999 ]; then
    echo "Enter lower number"
  elif [ "$port" -lt 999 ]; then
    printf -v port "%03d" $port
    djmanage runserver 127.0.0.1:8$port
  else
    djmanage runserver
  fi
}
djserkill() {
# Kill django server with port or with default port
  port="$1"
  if [ -z "$port" ]; then
    port=0
  fi
  if [ $port -gt 999 ]; then
    echo "Enter lower number"
  elif [ $port -lt 999 ]; then
    printf -v port "%03d" $port
    fuser -k 8$port/tcp
  else
    fuser -k 8000/tcp
  fi
}
