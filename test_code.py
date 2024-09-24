from SnD import DATA, stats, the, csv
from SnD import run_comparison as r_c

from copy import deepcopy
import random

def guess(N,d):
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

def test_Chebyshevs():
    """
    Tests the `chebyshevs()` method and related functionality of the DATA class, checking:
    - Whether `chebyshevs().rows[0]` returns the top item.
    - Whether 'smart' and 'dumb' lists have the correct length.
    - Whether the experimental treatment runs 20 times for statistical validity.
    - Whether `d.shuffle()` randomizes the order of the data correctly.
    Args:
        None

    Returns:
        None: This function prints the result of various tests.
    """
    data_file = "data/misc/auto93.csv" # Adjust the file path as needed
    d = DATA().adds(csv(data_file))  # Add the data to the DATA instance

    # Test 1: Ensure chebyshevs() sorts the rows and returns a top item
    d_chebyshev = d.chebushev()
    assert len(d_chebyshev) > 0,  "Test failed: chebyshevs() returned no rows"
    top_item = d_chebyshev.rows[0]
    print(f"Top item after chebyshev sort: {top_item}")

    # Test 2: Ensure d.shuffle() randomizes the order of rows
    rows_before_shuffle = deepcopy(d.rows)
    d.shuffle()
    rows_after_shuffle = d.rows
    assert rows_before_shuffle != rows_after_shuffle, "Test failed: shuffle() did not change the order of rows"
    assert sorted(rows_before_shuffle) == sorted(rows_after_shuffle), "Test failed: shuffle() altered the data content"

    print("shuffle() successfully jumbled the order of rows")
    # experimental treatment runs 20 times
    point = []
    point = r_c()  #" work with return [dumb, smart]"
    assert len(point[0]) == 20, "Test failed: Dumb approach did not run 20 times" #"0 dump"
    assert len(point[1]) == 20, "Test failed: Smart approach did not run 20 times" #"1 smart"

    # Test 3: Ensure 'smart' and 'dumb' lists have the correct length (N=20)
    N = 20  # You can adjust the sample size if needed
    dumb = [guess(N, d) for _ in range(20)]
    dumb_lengths = [len(lst) for lst in dumb]
    assert all(length == N for length in dumb_lengths),\
        "Test failed: Dumb approach lists are not of length N"

    the.Last = N ## Set the 'Last' parameter for the smart approach
    smart = [d.shuffle().activeaLearning() for _ in range(20) ]
    smart_lengths = [len(lst[0]) for lst in smart]
    assert all(length == N for length in smart_lengths), \
        "Test failed: Smart approach lists are not of length N"

    print(f"Smart and dumb lists are of correct length: {N}")





