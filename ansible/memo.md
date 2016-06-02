#### Clean previous nginx installation

    sudo apt-get remove nginx nginx-common \
        && sudo apt-get purge nginx nginx-common \
        && sudo apt-get autoremove

#### Ping Host

    ansible all -m ping -i $INVENTORY_FILE  -u $USER

#### Running playbook

    ansible-playbook -v -i $INVENTORY_FILE -s -u $USER  $PLAYBOOK_FILE