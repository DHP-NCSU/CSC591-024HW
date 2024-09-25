import os

with open("data_info.txt", 'r') as f:
    data_file = f.readlines()

# print(data_file)
f.close()
#print(data_file)
low = []
other  = []
for i in range(2,len(data_file)):
    dim, _, _, _, _, file = data_file[i].split('\t')
    if dim.strip() == 'small':
        low += [os.path.join("data/", file.strip())]
    else:
        other+= [os.path.join("data/", file.strip())]

for kind in ["low","other"]:
    with open(f"SnD_{kind}_dim.sh",'w') as f:
        f.write(f"mkdir -p tmp/SnD_{kind}_dim\n")
        f.write(f"rm tmp/SnD_{kind}_dim/*\n")
    for file in eval(kind):
        with open(f"SnD_{kind}_dim.sh", 'a') as f:
            f.write(f"python3.13 SnD.py {file} | tee tmp/SnD_{kind}_dim/{file.split('/')[-1]} &\n")

 




