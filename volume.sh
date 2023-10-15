#!/bin/bash
delete_vols() {
vols=$(aws ec2 describe-volumes | jq ".Volumes[].VolumeId" | tr -d '"')
for vol in $vols
do
    size=$(aws ec2 describe-volumes --volume-ids $vol | jq ".Volumes[].Size")
    if  [ $size -gt 5 ]
    then
        echo "$vol is  a Prod Volume. Dont Delete"
    else
        echo "Deleting Volume $vol"
        aws ec2 delete-volume --volume-id $vol
    fi
done
}


delete_vols


