from copy import deepcopy
from ezr import DATA, the, csv
from SnD import guess, run_comparison


data_file = "data/misc/auto93.csv"


def test_chebyshevs():
    """Test whether hebyshevs().rows[0] return the top item in that sort.
    """
    d = DATA().adds(csv(data_file))
    optimal_row = d.chebyshevs().rows[0]
    optimal_dis = d.chebyshev(optimal_row)
    for row in d.rows:
        assert optimal_dis <= d.chebyshev(
            row), "The chebyshevs().rows[0] is not on the top of the sort."
    print(f"chebyshevs().rows[0] does return the top item in that sort.")


def test_guess_length():
    """Test if the 'dumb' approach returns lists of correct length when N ranges among {20, 30, 40, 50}.
    """
    for N in (20, 30, 40, 50):
        d = DATA().adds(csv(data_file))
        dumb = guess(N, d)
        assert len(
            dumb) == N, f"Test failed: Dumb approach lists are not of length N when set to {N}"
    print(f"Dumb approach lists are of correct length.")


def test_smart_length():
    """Test if the 'smart' approach returns lists of correct length when N ranges among {20, 30, 40, 50}.
    """
    for N in (20, 30, 40, 50):
        d = DATA().adds(csv(data_file))
        the.Last = N
        smart = d.shuffle().activeLearning()
        assert len(
            smart) == N, f"Test failed: Smart approach lists are not of length N when set to {N}"

    print(f"Smart lists are of correct length: {N}")


def test_statistic():
    """Test whether the code really run some experimental treatment 20 times for statistical validity?
    """
    dump, smart, _ = run_comparison(data_file)
    assert len(dump) == 20, "Test failed: Dumb approach did not run 20 times"
    assert len(smart) == 20, "Test failed: Smart approach did not run 20 times"
    print("run_comparison successfully executed 20 times for both 'dumb' and 'smart' approaches")


def test_shuffle():
    """
    Test if `shuffle()` correctly randomizes the order of rows.
    """
    def str_comp_key(element):
        return [(float(x) if x != '?' else float('inf')) for x in element]

    d = DATA().adds(csv(data_file))
    rows_before_shuffle = deepcopy(d.rows)
    d.shuffle()
    rows_after_shuffle = d.rows
    assert rows_before_shuffle != rows_after_shuffle, "Test failed: shuffle() did not change the order of rows"
    assert sorted(rows_before_shuffle, key=str_comp_key) == sorted(
        rows_after_shuffle, key=str_comp_key), "Test failed: shuffle() altered the data content"
    print("shuffle() successfully jumbled the order of rows")


"""
def t_chebyshev(data_file): #add function
    #调用的b4去找它的top的值，去检测那个值

    data_file = "data/misc/auto93.csv" # Adjust the file path as needed
    d = DATA().adds(csv(data_file))  # Add the data to the DATA instance
    _, _, b4 = run_comparison(data_file, disp=False)
    d_chebyshev = d.chebyshev(b4)
    assert len(d_chebyshev) > 0,  "Test failed: chebyshevs() returned no rows"
    top_item = d_chebyshev
    print(f"Top item after chebyshev sort: {top_item}")

def run_all_tests(data_file):
        # Runs all the test cases one by one.
        # test_chebyshev(data_file)
        # test_shuffle()
        # test_dumb_smart_comparison(data_file)
        # test_guess_length(data_file)
        test_smart_length(data_file)
        print("All tests passed successfully!")

"""
