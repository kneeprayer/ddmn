#!/bin/bash
if [ $1 ]; then
    case $1 in
        "dev")
            docker-compose -f docker-compose.yml up -d
        ;;
        "prod")
            docker-compose -f docker-compose-prod.yml up -d
        ;;
    esac
else
  docker-compose -f docker-compose.yml up -d
fi