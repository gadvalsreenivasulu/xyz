#! /bin/bash

sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.186.169 << EOF
                #cd score-ui
                #git pull
                #npm run build_qa;
EOF
