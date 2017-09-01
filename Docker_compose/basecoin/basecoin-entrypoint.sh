#!/bin/bash
set -x
export GOPATH=/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
COMMAND="basecli keys new admin"
PASSWORD=1234567890

echo $PASSWORD |eval  $COMMAND
ADMIN=$(basecli keys get admin | awk '{print $2}')
echo $ADMIN

#o initialize a new Basecoin blockchain
#INIT="basecoin init " 
BASE="basecoin init " 
INIT=$BASE$ADMIN
$INIT

#Now we can start Basecoin:
START="basecoin start"
exec $START
#exec basecoin start

