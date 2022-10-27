#! /bin/bash

echo 'This file is started working now' ;

if [ $1 = "deploy" ]
then
        #sshpass -p 'Onstak123' ssh user@172.16.180.71
        if [ $2 = "dev" ]
        then
              echo 'you are in dev env';
              sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.180.71 << EOF
              
              echo 'pulling the code'
                #cd score-ui/
                #git pull
                
                echo 'build'
                #npm run build_dev;
                
                echo 'deplot in dev'
                #sudo cp -r ./dist/UI/* /var/www/html;

EOF

        elif [ $2 =  "qa" ]
        then
                echo 'you are in qa';
                 sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.186.169 << EOF
                #cd score-ui
                #git pull
                
                echo 'build'
                #npm run build_qa;
                
                echo 'deploy in qa'
                #sudo cp -r ./dist/UI/* /var/www/html;

EOF

        elif [ $2 = 'prod' ]
        then
                echo 'you are in prod';
                #cd score-ui
                #git pull
                #npm run build_prod;
                
                echo 'build'
                #sudo nohup npm run prod &
                
                echo ' deploy in prod'
                #sudo cp -r ./dist/UI/* /var/www/html;
        else
                echo ' you are ready for deloy but select where you are deploy'

        fi
elif [ $1 = " restart" ]
then
        echo ' restart'
        if [ $2 = 'dev' ]
        then
                echo 'restarting dev'

        elif [ $2 = 'qa' ]
        then
                echo ' restarting qa'

        elif [ $2 = 'prod' ]
        then

                echo ' restarting prod'
                #sudo tail -f nohup.out
                #sudo nohup npm run prod &
        fi
else
        echo 'please enter the aurgument 1'
fi
