# E. Negatives and Positives

def negatives_positives(n):
    # Count negative numbers
    neg_count = sum(1 for x in n if x < 0)
    
    # Sum of absolute values
    total = sum(abs(x) for x in n)
    
    # If odd number of negatives, subtract the smallest absolute value twice
    if neg_count % 2 == 1:
        total -= 2 * min(abs(x) for x in n)
    
    return total
    
    

# Read input
t = int(input())
for _ in range(t):
    m = int(input())
    n = list(map(int, input().strip().split()))
    print(negatives_positives(n))