# IntelStabilityCheck
Rudimental stability check script for 13th and 14th gen Intel CPUs, as the K series seem to have stability issues - especially when decompressing data.

## Usage
chmod +x ./1314stability.sh

./1314stability.sh n

--------
Where 'n' is the number of compression-decompression cycles. (f.e. ./1314stability.sh 100000 )

## Warning
The script will temporarely create 2 files: 'temp' and 'temp2', which will be overwritten a lot.

Therefore, **I suggest running it in a tmpfs environment.**
But it's not necessary of course.
