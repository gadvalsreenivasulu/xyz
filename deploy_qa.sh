#! /bin/bash

sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.186.169 << EOF
                #cd score-ui
                #git pull
                
                echo 'build'
                #npm run build_qa;
                
                 echo 'deplot in dev'
                #sudo cp -r ./dist/UI/* /var/www/html;

EOF
