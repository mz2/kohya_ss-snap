#!/bin/bash
set -e

export HOST=$(craftctl get host)
export PORT=$(craftctl get port)

cd $SNAP_COMMON
./gui.sh --listen $HOST --server_port $PORT $@
