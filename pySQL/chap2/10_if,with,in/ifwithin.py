movies = {"The grudge", "Hurt locker", "RIP"}
user_movie = input("Enter recent movie: ")

if user_movie in movies:
    print(f"I've also watched {user_movie}")
else:
    print("Haven't seen that")

number = 9
usInput = input("Enter 'y' if you want to play")

if usInput in ("y", "Y"):
    usNum = int(input("Guess number: "))
    if usNum == number:
        print("Correct")
    elif number - usNum in (1, -1):
        print("So close but off by 1")
    else:
        print("Incorrect")

number = 7
usInput = input("Enter 'y' to play")
if usInput.lower() == "y":
    usNum = int(input("Guess:"))
    if usNum == number:
        print("Correct")
    elif abs(number - usNum) == 1:
        print("Off by 1")
    else:
        print("incorrect")
