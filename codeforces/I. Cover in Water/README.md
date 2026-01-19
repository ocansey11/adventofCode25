# I. Cover in Water

**Time limit per test:** 1 second  
**Memory limit per test:** 256 megabytes

## Problem Statement

Filip has a row of cells, some of which are blocked, and some are empty. He wants all empty cells to have water in them. He has two actions at his disposal:

1. **Action 1** — place water in an empty cell.
2. **Action 2** — remove water from a cell and place it in any other empty cell.

If at some moment cell `i` (2 ≤ i ≤ n−1) is empty and both cells `i−1` and `i+1` contain water, then it becomes filled with water automatically.

Find the minimum number of times he needs to perform **action 1** in order to fill all empty cells with water.

**Note:** You don't need to minimize the use of action 2. Blocked cells neither contain water nor can Filip place water in them.

## Input

Each test contains multiple test cases. The first line contains the number of test cases `t` (1 ≤ t ≤ 100). The description of the test cases follows.

The first line of each test case contains a single integer `n` (1 ≤ n ≤ 100) — the number of cells.

The next line contains a string `s` of length `n`. The i-th character of `s` is:
- `.` if the cell i is empty
- `#` if cell i is blocked

## Output

For each test case, output a single number — the minimal amount of actions 1 needed to fill all empty cells with water.

## Example

### Input
```
5
3
...
7
##....#
7
..#.#..
4
####
10
#...#..#.#
```

### Output
```
2
2
5
0
2
```

## Notes

**Test Case 1:** `...`
- Filip can put water in cells 1 and 3. 
- Cell 2 is between 2 cells with water, so it gets filled automatically.
- Answer: 2

**Test Case 2:** `##....#`
- Put water in cells 3 and 5.
- Cell 4 gets filled automatically.
- Remove water from cell 5 and place it into cell 6 (action 2).
- Cell 5 gets filled automatically (between cells 4 and 6).
- Answer: 2

**Test Case 3:** `..#.#..`
- No consecutive empty cells of length ≥ 3.
- Must put water in all 5 empty cells.
- Answer: 5

**Test Case 4:** `####`
- No empty cells.
- Answer: 0

**Test Case 5:** `#...#..#.#`
- There's a sequence of 3 consecutive empty cells.
- Can use the automatic filling trick.
- Answer: 2

## Key Insight

If there are 3 or more consecutive empty cells (`...`), you can:
1. Place water at both ends
2. Use action 2 to move water around and trigger automatic filling
3. This fills the entire segment with just 2 action 1s!

Otherwise, you need to place water in each empty cell individually.
