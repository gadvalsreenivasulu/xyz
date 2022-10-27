sshpass -p 'Onstak123' ssh -o StrictHostKeyChecking=no user@172.16.180.71 << EOF
    mkdir Folder
    cd Folder               
    mkdir Folder1

    #cd score-ui/
    #git pull
    #npm run build_dev;
EOF
