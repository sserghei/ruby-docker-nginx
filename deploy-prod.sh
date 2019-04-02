#!/bin/bash
docker-compose -f docker-compose.production.yml up -d --build
docker-compose exec app rake db:create
docker-compose exec app rake db:migrate
docker-compose exec app rake assets:precompile