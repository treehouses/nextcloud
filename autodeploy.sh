#!/bin/bash
export DOCKER_CLI_EXPERIMENTAL=enabled
source utils.sh
deploy_image "treehouses/nextcloud" arm
deploy_image "treehouses/nextcloud" arm64
deploy_image "treehouses/nextcloud" amd64
timetag=$(date +%Y%m%d%H%M)
echo $timetag
tag1="latest"
tag2=$timetag
echo $tag2
docker inspect treehouses/nextcloud:amd64
docker inspect treehouses/nextcloud:arm64
docker inspect treehouses/nextcloud:arm
create_manifests treehouses/nextcloud $tag1 $tag2 treehouses/nextcloud:amd64 treehouses/nextcloud:arm treehouses/nextcloud:arm64 nextcloud

