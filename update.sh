#!/bin/sh

cd `dirname $0`
pwd=`pwd`

swagger_path=$pwd/swagger-ui

if [[ -e $swagger_path ]]; then
    cd $swagger_path
    git pull
else
    git clone https://github.com/swagger-api/swagger-ui.git $swagger_path
fi

cp $swagger_path/dist/* $pwd/swagger

rm $pwd/swagger/*.map
rm $pwd/swagger/swagger-ui.js
rm $pwd/swagger/swagger-ui-es-bundle*

cp $pwd/src/index.html $pwd/swagger/index.html
