# F. Range Update Point Query

def rangeUpdate(arr, n, q):
    def sum_of_digits(n):
        total = 0
        while n > 0:
            total += n % 10
            n //= 10
        return total
    
    stable = set()
    
    for _ in range(q):
        query = list(map(int, input().split()))
        
        if query[0] == 1:
            l, r = query[1] - 1, query[2]
            for i in range(l, r):
                if i not in stable:
                    arr[i] = sum_of_digits(arr[i])
                    if arr[i] < 10:
                        stable.add(i)
        else:
            x = query[1] - 1
            print(arr[x])

# Read input
t = int(input())
for _ in range(t):
    n, q = map(int, input().split())
    arr = list(map(int, input().split()))
    rangeUpdate(arr, n, q)

