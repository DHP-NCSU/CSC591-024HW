import random
import sys
import time
from ezr import DATA, stats, the, csv, stats

def guess(N, d):
    some = random.choices(d.rows, k=N)
    return d.clone().adds(some).chebyshevs().rows

start = time.time()
# data_file = "data/classify/diabetes.csv"
# data_file = "data/classify/soybean.csv"
data_file = "data/config/SS-A.csv"
somes = []

d = DATA().adds(csv(data_file))

b4 = [d.chebyshev(row) for row in d.rows]
somes = [stats.SOME(b4,f"asIs,{len(d.rows)}")]

