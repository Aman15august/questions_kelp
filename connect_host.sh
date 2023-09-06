#!/bin/bash

#connecting hosts with controlnode

hosts=("host1" "host2" "host3" "host4" "host5" "host6" "host7" "host8" "host9" "host10")

for host in "${hosts[@]}"; do
  echo "Connecting to $host..."
  ssh ubuntu@$host  
done

