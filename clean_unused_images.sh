img_rm=$(docker images | grep "<none>" | awk "{print \$3}")

if [ $? != 0 ]
then
    docker rmi -f $img_rm
else
    echo "No image be removed."
fi