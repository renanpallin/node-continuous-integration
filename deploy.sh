#!/bin/bash

tar zcvf node-express.tar.gz index.js package.json
scp node-express.tar.gz deployer@192.168.1.102:~
rm node-express.tar.gz

ssh deployer@192.168.1.102 << 'ENDSSH'
pm2 stop node-express
rm -rf node-express
mkdir node-express
tar zxvf node-express.tar.gz -C node-express
cd node-express
yarn install
pm2 start node-express
echo '===================================='
echo 'Deploy executado com sucesso!'
echo '===================================='

pm2 show node-express
ENDSSH