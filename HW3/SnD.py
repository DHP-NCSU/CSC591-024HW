import random
import sys
from ezr import DATA, stats, the, csv, stats

def guess(N, d):
    """
    Selects N random rows from the dataset managed by the DATA instance 'd', performs a ranking using
    the 'chebyshevs()' method which presumably organizes them based on some optimization criterion,
    and returns these ranked rows.

    Args:
        N (int): Number of rows to randomly select and evaluate.
        d (DATA): Instance of DATA containing rows of the dataset.

    Returns:
        list: Ranked rows after evaluation using 'chebyshevs()' method.
    """
    some = random.choices(d.rows, k=N)
    return d.clone().adds(some).chebyshevs().rows



def run_comparison(data_file):
    """
     Conducts a comparative analysis of two different data sampling strategies ('dumb' and 'smart') on
     a dataset. The 'dumb' approach involves random sampling, while the 'smart' approach utilizes an
     active learning strategy, likely to prioritize more informative samples. This function iterates
     over different sizes of samples to statistically evaluate and compare the efficacy of both
     approaches using 'stats.SOME' for statistical accumulation and reporting the results with 'stats.report()'.

     Args:
         data_file (str): Path to the CSV file containing the dataset to be processed.

     Returns:
         None: This function directly prints the comparison results.
     """

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
    return [dumb, smart,b4]



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

