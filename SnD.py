import random
from ezr import DATA

def guess(N, d):
    some = random.choices(d.rows, k=N)
    d.clone().adds(some).chebyshevs().rows

for n in [20, 30, 40, 50]:
    d = DATA.new().csv(data)