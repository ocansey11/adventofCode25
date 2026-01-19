# J. Game with Integers

**Time limit per test:** 1 second  
**Memory limit per test:** 256 megabytes

## Problem Statement

Vanya and Vova are playing a game. Players are given an integer `n`. On their turn, the player can add 1 to the current integer or subtract 1. The players take turns; Vanya starts. 

**Win conditions:**
- If after Vanya's move the integer is divisible by 3, then he wins.
- If 10 moves have passed and Vanya has not won, then Vova wins.

Write a program that, based on the integer `n`, determines who will win if both players play optimally.

## Input

The first line contains the integer `t` (1 ≤ t ≤ 100) — the number of test cases.

The single line of each test case contains the integer `n` (1 ≤ n ≤ 1000).

## Output

For each test case, print "First" without quotes if Vanya wins, and "Second" without quotes if Vova wins.

## Example

### Input
```
6
1
3
5
100
999
1000
```

### Output
```
First
Second
First
First
Second
First
```

## Notes

**Analysis:**
- n = 1: Vanya can +1 → 2, or -1 → 0. If he goes to 0 (divisible by 3), he wins! **First**
- n = 3: Already divisible by 3, but Vanya must MAKE A MOVE first. After his move (±1), it won't be divisible by 3. Vova can then make it divisible by 3 on his turn. **Second**
- n = 5: Vanya can -1 → 4, or +1 → 6 (divisible by 3). He wins! **First**
- n = 100: 100 % 3 = 1. Vanya can make it divisible by 3. **First**
- n = 999: 999 % 3 = 0. Already divisible, but Vanya must move. **Second**
- n = 1000: 1000 % 3 = 1. Vanya can make it divisible by 3. **First**

## Key Insight

Think about `n % 3`:
- If n % 3 == 0: Vanya MUST move away from divisible-by-3, giving Vova the chance to win
- If n % 3 == 1 or n % 3 == 2: Vanya can make it divisible by 3 on his first move
