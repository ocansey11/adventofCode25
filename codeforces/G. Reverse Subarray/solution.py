# G. Reverse Subarray

def halloumi_Box(n,k,arr):
    if k >= 2 or arr == sorted(arr):
        return "YES"
    else:
        return "NO"

# Read input
t = int(input())
for _ in range(t):
    n, k = map(int, input().split())
    arr = list(map(int, input().strip().split()))
    print(halloumi_Box(n,k,arr))    
