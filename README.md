#Sample new rails project with sample db and one table
    - rails 5.2.2
    - ruby 2.6.1
    - postgres 10
    - docker-compose 3.1 

###Project configuration:
    - docker-compose
    - unicorn - nginx

####Docker-compose services:
    - web
    - app
    - postgres
    - redis
    - sidekiq
    - cron

####Docker-compose Files and Folders.
```
|
|\_ app
|...
|\_ docker
| |
| |\_ development
| | |...
| |\_ staging
| | |...
|  \_ production
|   |
|   |\_ app
|   | |
|   |  \_ Dockerfile
|    \_ web
|     |
|     |\_ Dockerfile
|      \_ nginx.conf
|
|\_ .env
|\_ docker-compose.yml
|\_ docker-compose.staging.yml
 \_ docker-compose.production.yml
 ```
 
 ##Docker-compose build and run
    - setup relevant .env file
    - bash deploy-local.sh
    
    - docker-compose up -d --build
    - docker-compose -f docker-compose.staging.yml up -d --build
    - docker-compose -f docker-compose.production.yml up -d --build