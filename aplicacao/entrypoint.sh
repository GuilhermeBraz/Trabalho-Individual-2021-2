#!/bin/bash
set -e



rm -f /home/trabajo/tmp/pids/server.pid
rails db:create
rails db:migrate
rails db:seed
rails server -b 0.0.0.0 

exec "$@"