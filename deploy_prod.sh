#! /bin/bash
#cd C:\Users\sreen\Documents\Denali_SCORE\AWS_SSH_Key
#ssh -i "C:\Users\sreen\Documents\Denali_SCORE\AWS_SSH_Key\SCORE" score@35.90.98.74 
#Pass: uR@sNH4oSo&bp3$L
#sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.186.169 << EOF
                #cd score-ui
                #git pull
                
                echo 'build'
                #npm run build_qa;
                
                 echo 'deplot in dev'
                #sudo cp -r ./dist/UI/* /var/www/html;
EOF
