#!/bin/bash

for d in */; do
  if [ "$d" == "pgadmin4/" ] || [ "$d" == "charts/" ]
  then
    continue
  fi
  helm package $d -d ./charts
done
helm repo index . --url https://folio-org.github.io/folio-helm/
