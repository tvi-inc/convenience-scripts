#!/bin/sh
host=$1 port=$2
[ -z "$host" -o -z "$port" ] && { echo "Usage: $0 <host> <port>" >&2; exit 2; }
timeout 3 nc -z "$host" "$port" 2>/dev/null
