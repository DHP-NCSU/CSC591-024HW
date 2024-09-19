mkdir -p tmp/SnD
rm tmp/SnD/*
python3 SnD.py data/config/SS-A.csv | tee tmp/SnD/SS-A.csv
python3 SnD.py data/config/SS-B.csv | tee tmp/SnD/SS-B.csv
python3 SnD.py data/config/SS-C.csv | tee tmp/SnD/SS-C.csv

