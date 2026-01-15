# B. Following Directions

# def direction(s):
    # direction = {'U': 0, 'D': 0, 'L': 0, 'R': 0}
    # for i in range(len(input) - 1):
    #     direction[input[i]] += 1


    # if direction['U'] - direction['D'] == 1 and direction['R'] - direction['L'] == 1:
    #     return "Yes"
    # else:
    #     return "No"
    # The comented bove actually only works when we are checking if Alpeh can reach (1, 1) in any order of moves.

    # However we need to check if Alpen crosses 1,1 at any point in the given order of moves.
def direction(s):
    x = 0
    y = 0
    
    for move in s:  # Just iterate through each character
        if move == 'U':
            y += 1
        elif move == 'D':
            y -= 1
        elif move == 'L':
            x -= 1
        elif move == 'R':
            x += 1
        
        # Check after EACH move if we hit (1,1)
        if x == 1 and y == 1:
            return "YES"
    
    return "NO"  # Never hit (1,1)

if __name__ == "__main__":
    t = int(input())  # Number of test cases
    for _ in range(t):
        n = int(input())  # Length of string (not really needed)
        s = input().strip()
        print(direction(s))