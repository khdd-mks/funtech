#!/bin/sh

rm -r ./deploy/files
mkdir -p ./deploy/files

npm run build

cp ./index.html ./deploy/files
cp -R -T ./dist ./deploy/files

cd ./deploy
docker build ./ -t riot-webpack
