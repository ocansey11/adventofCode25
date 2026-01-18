# F. Range Update Point Query

**Time limit per test:** 2 seconds  
**Memory limit per test:** 256 megabytes

## Problem Statement

Given an array a₁, a₂, …, aₙ, you need to handle a total of `q` updates and queries of two types:

1. **Type 1** (`1 l r`) — for each index `i` with l ≤ i ≤ r, update the value of aᵢ to the sum of the digits of aᵢ.
2. **Type 2** (`2 x`) — output aₓ.

## Input

The first line of the input contains an integer `t` (1 ≤ t ≤ 1000) — the number of testcases.

The first line of each test case contains two integers `n` and `q` (1 ≤ n, q ≤ 2⋅10⁵) — the size of the array and the number of queries, respectively.

The second line of each test case contains `n` integers a₁, a₂, …, aₙ (1 ≤ aᵢ ≤ 10⁹).

The next `q` lines of each test case are of two forms:
* `1 l r` (1 ≤ l ≤ r ≤ n) — it means, for each index `i` with l ≤ i ≤ r, you should update the value of aᵢ to the sum of its digits.
* `2 x` (1 ≤ x ≤ n) — it means you should output aₓ.

There is at least one query of the second type.

The sum of `n` over all test cases does not exceed 2⋅10⁵.  
The sum of `q` over all test cases does not exceed 2⋅10⁵.

## Output

For each test case, output the answers of queries of the second type, in the order they are given.

## Example

### Input
```
3
5 8
1 420 69 1434 2023
1 2 3
2 2
2 3
2 4
1 2 5
2 1
2 3
2 5
2 3
9999 1000
1 1 2
2 1
2 2
1 1
1
2 1
```

### Output
```
6
15
1434
1
6
7
36
1
1
```

## Notes

In the first test case, the following process occurs:
* Initially, a = [1, 420, 69, 1434, 2023].
* The operation is performed for l=2, r=3, yielding [1, 6, 15, 1434, 2023].
  - a[2] = 420 → sum of digits = 4+2+0 = 6
  - a[3] = 69 → sum of digits = 6+9 = 15
* We are queried for x=2, x=3, and x=4, and output 6, 15, and 1434.
* The operation is performed for l=2, r=5, yielding [1, 6, 6, 12, 7].
  - a[2] = 6 → sum of digits = 6
  - a[3] = 15 → sum of digits = 1+5 = 6
  - a[4] = 1434 → sum of digits = 1+4+3+4 = 12
  - a[5] = 2023 → sum of digits = 2+0+2+3 = 7
* We are queried for x=1, x=3, and x=5, and output 1, 6, and 7.
