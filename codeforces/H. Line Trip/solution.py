# H. Line Trip

def lineTrip(n, x, arr):
    max_distance = max(arr[0]- 0, 2 *(x - arr[-1]))

    for i in range(0, n-1):
        distance = arr[i+1] - arr[i]
        if distance > max_distance:
            max_distance = distance
    return max_distance

# Read input
t = int(input())
for _ in range(t):
    n, x = map(int, input().split())
    arr = list(map(int, input().split()))
    print(lineTrip(n, x, arr))