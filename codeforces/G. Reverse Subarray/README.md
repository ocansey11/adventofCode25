# G. Reverse Subarray

**Time limit per test:** 1 second  
**Memory limit per test:** 256 megabytes

## Problem Statement

Theofanis is busy after his last contest, as now, he has to deliver many halloumis all over the world. He stored them inside `n` boxes and each of which has some number aᵢ written on it.

He wants to sort them in non-decreasing order based on their number, however, his machine works in a strange way. It can only reverse any subarray† of boxes with length **at most k**.

Find if it's possible to sort the boxes using any number of reverses.

† Reversing a subarray means choosing two indices `i` and `j` (where 1 ≤ i ≤ j ≤ n) and changing the array a₁, a₂, …, aₙ to a₁, a₂, …, aᵢ₋₁, aⱼ, aⱼ₋₁, …, aᵢ, aⱼ₊₁, …, aₙ₋₁, aₙ. The length of the subarray is then j − i + 1.

## Input

The first line contains a single integer `t` (1 ≤ t ≤ 100) — the number of test cases.

Each test case consists of two lines.

The first line of each test case contains two integers `n` and `k` (1 ≤ k ≤ n ≤ 100) — the number of boxes and the length of the maximum reverse that Theofanis can make.

The second line contains `n` integers a₁, a₂, …, aₙ (1 ≤ aᵢ ≤ 10⁹) — the number written on each box.

## Output

For each test case, print YES (case-insensitive), if the array can be sorted in non-decreasing order, or NO (case-insensitive) otherwise.

## Example

### Input
```
5
3 2
1 2 3
3 1
9 9 9
4 4
6 4 2 1
4 3
10 3 830 14
2 1
3 1
```

### Output
```
YES
YES
YES
YES
NO
```

## Notes

**Test case 1:** The boxes are already sorted in non-decreasing order.

**Test case 2:** The boxes are already sorted (all equal values).

**Test case 3:** We can reverse the whole array: [6, 4, 2, 1] → [1, 2, 4, 6].

**Test case 4:** We can reverse the first two boxes [10, 3] → [3, 10] to get [3, 10, 830, 14], then reverse the last two boxes [830, 14] → [14, 830] to get [3, 10, 14, 830].

**Test case 5:** It can be shown that it's impossible to sort the boxes. With k=1, we can only reverse subarrays of length 1 (which does nothing), so if the array isn't already sorted, we cannot sort it.
