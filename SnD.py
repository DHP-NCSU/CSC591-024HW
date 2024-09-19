import random
import sys
from ezr import DATA, stats, the, csv, stats


def guess(N, d):
    some = random.choices(d.rows, k=N)
    return d.clone().adds(some).chebyshevs().rows

#This function randomly selects N rows from a DATA instance d and ranks them using a method chebyshevs() to potentially order them by their importance or effectiveness according to some criteria.

def run_comparison(data_file):
    nd = DATA().adds(csv(data_file))
    b4 = [nd.chebyshev(row) for row in nd.rows]
    somes = [stats.SOME(b4,f"asIs,{len(nd.rows)}")]
    
    for N in (20, 30, 40, 50):
        d = DATA().adds(csv(data_file))
        
        # Dumb approach
        dumb = [guess(N, d) for _ in range(20)]
        dumb = [d.chebyshev(lst[0]) for lst in dumb]
        somes.append(stats.SOME(dumb, f"dumb,{N}"))
        
        # Smart approach
        the.Last = N
        smart = [d.shuffle().activeLearning() for _ in range(20)]
        smart = [d.chebyshev(lst[0]) for lst in smart]
        somes.append(stats.SOME(smart, f"smart,{N}"))
    
    stats.report(somes)

if __name__ == "__main__":
    # data_files = ["data/misc/auto93.csv"]  # Add more data files as needed
    # with open("full_files.txt", 'r') as f:
    #     data_files = f.readlines()
    # new_data_files = [file.strip() for file in data_files]
    # for file in new_data_files:
    #     try:
    #         print(f"\nResults for {file}:")
    #         run_comparison(file)
    #     except:
    #         continue
    try:
        run_comparison(sys.argv[1])
    except:
        pass