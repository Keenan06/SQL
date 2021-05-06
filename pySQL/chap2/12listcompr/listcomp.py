numbers = [1, 3, 5]
squares = [x * 2 for x in numbers]

friends = ["Simon", "Sairo", "Kayla", "Ambre", "Justin"]
start_s = []

for friend in friends:
    if friend.startswith("S"):
        start_s.append(friend)

print(start_s)

friends = ["Simon", "Sairo", "Kayla", "Ambre", "Justin"]
start_s = [friend for friend in friends if friend.startswith("S")]

print(start_s)

friends = ["Simon", "Sairo", "Steven"]
start_s = [friend for friend in friends if friend.startswith("S")]

print(friends)
print(start_s)
print(friends is start_s)
print("friends: ", id(friends), "start_s", id(start_s))