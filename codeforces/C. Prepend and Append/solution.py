# C. Prepend and Append


# I learn that strings are immutable in Python, so we cannot pop elements from them directly.
# Therefore ill use two pointers to check the first and last characters of the string.
# def prepend_append(s):
#     for _ in range(0, len(s)):
#         # first  = s.pop(0)
#         # last = s.pop(-1)

#         if (first == 1 and last == 0 or first == 0  and last ==1):
#             return s
#     return s

def prepend_append(s): 
    if len(s) == 0 or len(s) == 1:
        return 0
    left  =  0
    right = len(s) - 1

    for _ in range(len(s)):
        first = s[left]
        last = s[right]

        if (first == '1' and last == '0') or (first == '0' and last == '1'):
            return right - left +1
        left += 1
        right -= 1

    return right - left + 1

# Read input
t = int(input())
for _ in range(t):
    n = int(input())
    s = input().strip()
    print(prepend_append(s))