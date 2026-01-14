# A. Codeforces Checking

def checker(letter):
    codeforces = set("codeforces")
    if letter in codeforces:
        return "YES"
    else:
        return "NO"

t = int(input())
for _ in range(t):
    print(checker(input().strip()))