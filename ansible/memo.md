#### Clean previous nginx installation

    sudo apt-get remove nginx nginx-common \
        && sudo apt-get purge nginx nginx-common \
        && sudo apt-get autoremove

#### Ping Host

      ansible all -m ping -i $INVENTORY_FILE  -u $USER

#### Running playbook

    ansible-playbook -v -i $INVENTORY_FILE -s -u $USER  $PLAYBOOK_FILE

#### Ensure pyhton for the guests ( A RAJOUTER AU ANSIBLE MANAGEMENT DES MACHINES)

    sudo apt-get install python-simplejson && \
    sudo apt-get install python-pip && \
    sudo apt-get install software-properties-common python-software-properties
