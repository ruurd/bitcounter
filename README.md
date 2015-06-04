# bitcounter
This is a little script that counts 1-bits and 0-bits in a file. There are no restrictions on the filetype.

## Running the script
Check and if necessary set the x-bit on the count_bits.rb script and run it. If you do not pass an argument 
to the script it will mope and count its own bits. Before counting bits the script will check if the file exists
and iff the file is readable, if not it will complain.

## Project files
Before testing with the unreadable file, make sure the owner of the file is not the same as the user of the
script and that the file permissions are such that the user running the script cannot read the file. The all_ones 
file contains 132 1-bits and 0 0-bits. The all_zeroes file contains 132 0-bits and 0 1-bits (duh) and last but
not least the ones_and_zeroes file contains 64 1-bits and 64 0-bits

Enjoy!