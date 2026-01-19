# K. Jagged Swaps

**Time limit per test:** 1 second  
**Memory limit per test:** 256 megabytes

## Problem Statement

You are given a permutation† `a` of size `n`. You can do the following operation:

* Select an index `i` from 2 to n−1 such that a[i−1] < a[i] and a[i] > a[i+1]. Swap a[i] and a[i+1].

Determine whether it is possible to sort the permutation after a finite number of operations.

† A permutation is an array consisting of `n` distinct integers from 1 to `n` in arbitrary order. For example, [2,3,1,5,4] is a permutation, but [1,2,2] is not a permutation (2 appears twice in the array) and [1,3,4] is also not a permutation (n=3 but there is 4 in the array).

## Input

Each test contains multiple test cases. The first line contains the number of test cases `t` (1 ≤ t ≤ 5000). Description of the test cases follows.

The first line of each test case contains a single integer `n` (3 ≤ n ≤ 10) — the size of the permutation.

The second line of each test case contains `n` integers a₁, a₂, …, aₙ (1 ≤ aᵢ ≤ n) — the elements of permutation `a`.

## Output

For each test case, print "YES" if it is possible to sort the permutation, and "NO" otherwise.

You may print each letter in any case (for example, "YES", "Yes", "yes", "yEs" will all be recognized as positive answer).

## Example

### Input
```
6
3
1 2 3
5
1 3 2 5 4
5
5 4 3 2 1
3
3 1 2
4
2 3 1 4
5
5 1 2 3 4
```

### Output
```
YES
YES
NO
NO
NO
NO
```

## Notes

**Test case 1:** `[1, 2, 3]`
- Already sorted. Answer: YES

**Test case 2:** `[1, 3, 2, 5, 4]`
- i=2: 1 < 3 and 3 > 2 ✓ → swap → `[1, 2, 3, 5, 4]`
- i=4: 3 < 5 and 5 > 4 ✓ → swap → `[1, 2, 3, 4, 5]`
- Answer: YES

**Test case 3:** `[5, 4, 3, 2, 1]`
- Cannot perform any swaps (no element satisfies the condition)
- Answer: NO

**Test case 4:** `[3, 1, 2]`
- First element is 3, not 1
- Cannot move 1 to the front with the allowed operations
- Answer: NO

**Test case 5:** `[2, 3, 1, 4]`
- First element is 2, not 1
- Answer: NO

**Test case 6:** `[5, 1, 2, 3, 4]`
- First element is 5, not 1
- Answer: NO

## Key Insight

Look at the pattern:
- Test cases with a[0] = 1: Can be sorted (YES)
- Test cases with a[0] ≠ 1: Cannot be sorted (NO)

Think about WHY the first element matters. Can you move the first element with the allowed operation?
