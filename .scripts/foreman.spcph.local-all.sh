#!/bin/bash

echo Last chance, pushing to prod.

for i in {1..3}
    do
        echo -n $i.
        sleep 1
    done
echo "Are you sure? (1/2)"
select yn in "Yes" "No"; do
    case $yn in
    Yes)
        rsync -Pazv -r  --exclude-from=exclude.txt --delete-after --delete-excluded  /home/mbojko/Documents/foreman/manage_haproxy root@foreman.spcph.local:/etc/puppetlabs/code/environments/pilot_lin/modules/
        rsync -Pazv -r  --exclude-from=exclude.txt --delete-after --delete-excluded  /home/mbojko/Documents/foreman/manage_haproxy root@foreman.spcph.local:/etc/puppetlabs/code/environments/dev_lin/modules/
        rsync -Pazv -r  --exclude-from=exclude.txt --delete-after --delete-excluded  /home/mbojko/Documents/foreman/manage_haproxy root@foreman.spcph.local:/etc/puppetlabs/code/environments/prod_lin/modules/
        exit;;
    No) exit;;
    esac
done
echo "Done"



