#!/bin/bash -e

tag=$1

for m in $(find ./ -name 'go.mod'); do
  d=$(dirname $m);
  pushd $d;
  grep -q github.com/asim/nitro/v3 v3.3.0
  go mod tidy
  popd;
done
