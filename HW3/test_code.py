from ezr import DATA, the, csv
from SnD import guess, run_comparison

from copy import deepcopy


def test_chebyshev(data_file): #add function
    #调用的b4去找它的top的值，去检测那个值

    data_file = "data/misc/auto93.csv" # Adjust the file path as needed
    d = DATA().adds(csv(data_file))  # Add the data to the DATA instance
    point = run_comparison(data_file)
    d_chebyshev = d.chebyshev(point[2])
    assert len(d_chebyshev.point[2]) > 0,  "Test failed: chebyshevs() returned no rows"
    top_item = d_chebyshev.point[2]
    print(f"Top item after chebyshev sort: {top_item}")


    # Test 2: Ensure d.shuffle() randomizes the order of rows
def test_shuffle(data_file):
    """
    Test if `shuffle()` correctly randomizes the order of rows.
    """

    data_file = "data/misc/auto93.csv"
    d = DATA().adds(csv(data_file))
    rows_before_shuffle = deepcopy(d.rows)
    d.shuffle()
    rows_after_shuffle = d.rows
    assert rows_before_shuffle != rows_after_shuffle, "Test failed: shuffle() did not change the order of rows"
    assert sorted(rows_before_shuffle) == sorted(rows_after_shuffle), "Test failed: shuffle() altered the data content"
    print("shuffle() successfully jumbled the order of rows")


def test_dumb_smart_comparison(data_file):

    data_file = "data/misc/auto93.csv"
    point = run_comparison(data_file)  # 调用 run_comparison 并获取结果
    # point = run_comparison()  #" work with return [dumb, smart]"
    assert len(point[0]) == 20, "Test failed: Dumb approach did not run 20 times" #"0 dump"
    assert len(point[1]) == 20, "Test failed: Smart approach did not run 20 times" #"1 smart"
    print("run_comparison successfully executed 20 times for both 'dumb' and 'smart' approaches")

    # Test 3: Ensure 'smart' and 'dumb' lists have the correct length (N=20)
def test_guess_length(data_file):
    """
    Test if the 'dumb' approach returns lists of correct length (N=20).
    """
    data_file = "data/misc/auto93.csv"
    d = DATA().adds(csv(data_file))
    N = 20  # adjust the sample size if needed
    dumb = [guess(N, d) for _ in range(20)]
    dumb_lengths = [len(lst) for lst in dumb]
    assert all(length == N for length in dumb_lengths),"Test failed: Dumb approach lists are not of length N"
    print(f"Dumb approach lists are of correct length: {N}")

def test_smart_length(data_file):
    """
    Test if the 'smart' approach returns lists of correct length (N=20).
    """
    d = DATA().adds(csv(data_file))
    N = 20
    the.Last = N #Set the 'Last' parameter for the smart approach
    smart = [d.shuffle().activeaLearning() for _ in range(20) ]
    smart_lengths = [len(lst[0]) for lst in smart]
    assert all(length == N for length in smart_lengths), "Test failed: Smart approach lists are not of length N"
    print(f"Smart and dumb lists are of correct length: {N}")

def run_all_tests(data_file):
        """
        Runs all the test cases one by one.
        """
        test_chebyshev(data_file)
        test_shuffle(data_file)
        test_dumb_smart_comparison(data_file)
        test_guess_length(data_file)
        test_smart_length(data_file)
        print("All tests passed successfully!")

# 直接调用所有测试
data_file = "data/misc/auto93.csv"  # 替换为你的数据文件路径
run_all_tests(data_file)

