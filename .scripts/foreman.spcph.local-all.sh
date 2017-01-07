#!/bin/bash
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
        #rsync -Pazv -r --exclude=".*/" --exclude="*.md" --delete-after /home/mbojko/Documents/win_manage/ root@foreman.spcph.local:/etc/puppetlabs/code/environments/pilot_lin/modules/manage_haproxy
        #rsync -Pazv -r --exclude=".*/" --exclude="*.md" --delete-after /home/mbojko/Documents/manage_haproxy/ root@foreman.spcph.local:/etc/puppetlabs/code/environments/dev_lin/modules/manage_haproxy
        rsync -Pazv -r --exclude=".*/" --exclude="*.md" --delete-after /home/mbojko/Documents/foreman/manage_haproxy/ root@foreman.spcph.local:/etc/puppetlabs/code/environments/prod_lin/modules/manage_haproxy
          exit;;
    No) exit;;
    esac
done
echo "Done"



