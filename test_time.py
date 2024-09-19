import random
import sys
import time
from ezr import DATA, stats, the, csv, stats

def guess(N, d):
    some = random.choices(d.rows, k=N)
    return d.clone().adds(some).chebyshevs().rows


start = time.time()
data_file = "data/config/SS-B.csv"
somes = []
for N in (20, 30, 40, 50):
    print("now running with N = {}".format(N))
    d = DATA().adds(csv(data_file))
    
    # Dumb approach
    print("now running dumb method")
    dumb = [guess(N, d) for _ in range(20)]
    dumb = [d.chebyshev(lst[0]) for lst in dumb]
    somes.append(stats.SOME(dumb, f"dumb,{N}"))
    
    # Smart approach
    print("now running smart method")
    
    the.Last = N
    print(the)
    smart = [d.shuffle().activeLearning() for _ in range(20)]
    smart = [d.chebyshev(lst[0]) for lst in smart]
    somes.append(stats.SOME(smart, f"smart,{N}"))

stats.report(somes, 0.01)
end = time.time()

print(end-start)