#!/bin/bash
cont_count=$1
echo "creating $cont_count container"
sleep 2;
for i in `seq $cont_count`
do 
echo "==================="
echo "Creating the www.max$i container.."
sleep 1
sudo docker run --name www.max$i -d -it --rm hp/max /bin/bash
echo "www.max$i has been created"
echo "=============="
done
