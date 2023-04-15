#!/usr/bin/env sh

# Countdown timer before next script
set +x
echo 'Count to 60s before application is close'
i=60
while [ $i -ge 1 ]
do
	sleep 1s
	echo -n $i.." " 
	i=$((i-=1))
done
