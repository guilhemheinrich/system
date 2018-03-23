#! /bin/bash

docker run -it -v /var/www/html:/var/www/html -p 7443:80 mobilejazz/yii2-docker bash