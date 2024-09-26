mkdir -p /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim
rm -f /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/*
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-U.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-U.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-M.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-M.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-L.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-L.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-J.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-J.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-W.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-W.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/X264_AllMeasurements.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/X264_AllMeasurements.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-S.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-S.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-N.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-N.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-X.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-X.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-K.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-K.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-O.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-O.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-Q.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-Q.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-T.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-T.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/Apache_AllMeasurements.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/Apache_AllMeasurements.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SQL_AllMeasurements.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SQL_AllMeasurements.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-R.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-R.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-V.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-V.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/config/SS-P.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/SS-P.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/rs-6d-c3_obj1.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/rs-6d-c3_obj1.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/sol-6d-c2-obj1.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/sol-6d-c2-obj1.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/Wine_quality.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/Wine_quality.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/wc-6d-c1-obj1.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/wc-6d-c1-obj1.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/rs-6d-c3_obj2.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/rs-6d-c3_obj2.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/misc/HSMGP_num.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/HSMGP_num.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/xomo_flight.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/xomo_flight.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/pom3b.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/pom3b.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/xomo_osp2.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/xomo_osp2.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/pom3d.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/pom3d.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/pom3c.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/pom3c.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/xomo_osp.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/xomo_osp.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/xomo_ground.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/xomo_ground.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/coc1000.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/coc1000.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/pom3a.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/pom3a.csv & 
python3.13 /workspaces/CSC591-024HW/HW3/SnD.py /workspaces/CSC591-024HW/HW3/data/process/nasa93dem.csv | tee /workspaces/CSC591-024HW/HW3/tmp/SnD/other_dim/nasa93dem.csv & 
