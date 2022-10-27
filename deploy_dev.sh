#! /bin/bash

#sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.180.71 << EOF
 mkdir folder_is_created_from_jenkins
    #cd score-ui/
    #git pull
    
    echo 'build'
    #npm run build_dev;
    
     echo 'deploy in dev'
     #sudo cp -r ./dist/UI/* /var/www/html;

#EOF
