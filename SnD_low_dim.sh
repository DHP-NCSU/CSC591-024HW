mkdir -p tmp/SnD_low_dim
rm tmp/SnD_low_dim/*
python SnD.py data/config/SS-A.csv | tee tmp/SnD_low_dim/SS-A.csv &
python SnD.py data/config/SS-B.csv | tee tmp/SnD_low_dim/SS-B.csv &
python SnD.py data/config/SS-C.csv | tee tmp/SnD_low_dim/SS-C.csv &
python SnD.py data/config/SS-D.csv | tee tmp/SnD_low_dim/SS-D.csv &
python SnD.py data/config/SS-E.csv | tee tmp/SnD_low_dim/SS-E.csv &
python SnD.py data/config/SS-F.csv | tee tmp/SnD_low_dim/SS-F.csv &
python SnD.py data/config/SS-G.csv | tee tmp/SnD_low_dim/SS-G.csv &
python SnD.py data/config/SS-H.csv | tee tmp/SnD_low_dim/SS-H.csv &
python SnD.py data/config/SS-I.csv | tee tmp/SnD_low_dim/SS-I.csv &
python SnD.py data/hpo/healthCloseIsses12mths0001-hard.csv | tee tmp/SnD_low_dim/healthCloseIsses12mths0001-hard.csv &
python SnD.py data/hpo/healthCloseIsses12mths0011-easy.csv | tee tmp/SnD_low_dim/healthCloseIsses12mths0011-easy.csv &
python SnD.py data/misc/auto93.csv | tee tmp/SnD_low_dim/auto93.csv &
python SnD.py data/misc/wc+rs-3d-c4-obj1.csv | tee tmp/SnD_low_dim/wc+rs-3d-c4-obj1.csv &
python SnD.py data/misc/wc+sol-3d-c4-obj1.csv | tee tmp/SnD_low_dim/wc+sol-3d-c4-obj1.csv &
python SnD.py data/misc/wc+wc-3d-c4-obj1.csv | tee tmp/SnD_low_dim/wc+wc-3d-c4-obj1.csv &
