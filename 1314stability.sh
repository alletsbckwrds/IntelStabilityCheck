#!/bin/bash

touch ./temp
touch ./temp2
# uncompressed
# compressed

rnd="$(head /dev/random | base64)"
printf "$rnd" >./temp

echo Compression cycling...

for i in $(seq $1)
do
#echo DEBUG compressing
tar -czf ./temp2 ./temp
#true > ./temp
#echo DEBUG temp cleared
#echo DEBUG decompressing
tar --extract --file=./temp2 ./temp
done

if [[ "$(< ./temp)" != "$rnd" ]]; then
	echo test failed
else
	echo test passed successfully
fi

rm ./temp
rm ./temp2
