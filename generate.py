import os

with open("data_info.txt", 'r') as f:
    data_file = f.readlines()

# print(data_file)
f.close()
print(data_file)
small_list = []
other_list  = []
for i in range(2,len(data_file)):
    dim, _, _, _, _, file = data_file[i].split()
    if dim.strip() == 'small':
        small_list += os.path.join("data", file.strip())
    else:
        other_list += os.path.join("data", file.strip())

print(small_list)

    




