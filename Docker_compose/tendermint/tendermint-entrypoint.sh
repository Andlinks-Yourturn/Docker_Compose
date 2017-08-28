#!/bin/bash
set -x
tendermint init --home=$TMHOME
tendermint node —-home=$TMHOME
