#!/bin/bash

test(){
  local repo=$1  # this is the base repo, for example treehouses/alpine
  local arch=$2  #arm arm64 amd64
  local tag_repo=$3  # this is the tag repo, for example treehouses/node
  local version=$4
  tag=$tag_repo/$repo:$arch
  echo $tag
}
