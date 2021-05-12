# while loop

num = 7
play = input("PLAY? (y/n)")

while play != "n":
    usNum = int(input("Guess"))
    if usNum == num:
        print("Correct")
    elif abs(num - usNum) == 1:
        print("Off by 1")
    else:
        print("Incorrect")

    play = input("PLAY (y/n)")

# using "break"
while True:
    play = input("PLAY(y/n)")

    if play == "n":
        break

    usNum = int(input("Guess"))
    if usNum == num:
        print("Correct")
    elif abs(num - usNum) == 1:
        print("Off by 1")
    else:
        print("Incorrect")

# for loop

friends = ["Roelf", "Jen", "Bobby", "Anne"]
for friend in friends:
    print(f"{friend} is friend")

# for (AVERAGE)
grades = [35, 67, 98, 100, 100]
total = 0
amount = len(grades)
for grade in grades:
    total += grade

print(total / amount)

# Sum()
grades = [35, 67, 98, 100, 100]
total = sum(grades)
amount = len(grades)
print(total / amount)


