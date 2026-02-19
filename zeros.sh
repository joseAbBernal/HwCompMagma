#!/bin/bash
#completes the plaintext and ciphertext csv files used in CW305

echo "Remove '0x' from file PtCW305.csv"

sed 's/^0x//' PtCW305.csv > PtCW305x.csv

mv PtCW305x.csv PtCW305.csv

echo "Adding 0's to incomplete Plaintexts in Pt305.csv"

awk -F, '{ printf "%048s\n", toupper($1) }' PtCW305.csv | sed 's/ /0/g' > PtCW305_fixed.csv

mv PtCW305_fixed.csv PtCW305.csv

echo "Done"
echo ""

echo "Remove '0x' from file CtCW305.csv"

sed 's/^0x//' CtCW305.csv > CtCW305x.csv

mv CtCW305x.csv CtCW305.csv

echo "Adding 0's to cimplete Ciphertexts in CtCW305.csv"

awk -F, '{ printf "%016s\n", toupper($1) }' CtCW305.csv | sed 's/ /0/g' > CtCW305_fixed.csv

mv CtCW305_fixed.csv CtCW305.csv

echo "Done"
