def distinct_split(s):
    n = len(s)
    
    # Precompute distinct characters from left (prefix)
    left_distinct = [0] * n
    seen = set()
    for i in range(n):
        seen.add(s[i])
        left_distinct[i] = len(seen)
    
    # Compute distinct characters from right (suffix) and find max
    max_distinct = 0
    seen = set()
    for i in range(n - 1, 0, -1):  # i goes from n-1 down to 1
        seen.add(s[i])
        right_distinct = len(seen)
        
        # Split at position i: a = s[:i], b = s[i:]
        total = left_distinct[i - 1] + right_distinct
        max_distinct = max(max_distinct, total)
    
    return max_distinct

# Read input
t = int(input())
for _ in range(t):
    n = int(input())
    s = input().strip()
    print(distinct_split(s))
