mkdir -p /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim
rm -f /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/*
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-B.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-B.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-G.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-G.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-I.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-I.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-D.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-D.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-C.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-C.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-H.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-H.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-F.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-F.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-E.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-E.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-A.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/SS-A.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/hpo/healthCloseIsses12mths0011-easy.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/healthCloseIsses12mths0011-easy.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/hpo/healthCloseIsses12mths0001-hard.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/healthCloseIsses12mths0001-hard.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/auto93.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/auto93.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/wc+rs-3d-c4-obj1.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/wc+rs-3d-c4-obj1.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/wc+wc-3d-c4-obj1.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/wc+wc-3d-c4-obj1.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/wc+sol-3d-c4-obj1.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/low_dim/wc+sol-3d-c4-obj1.csv & 
