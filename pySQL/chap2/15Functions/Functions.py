def hello():
    print("Hello")


hello()

# defining vs calling functions


def age_seconds():
    userage = int(input("Enter age:"))
    seconds = userage * 365 * 24 * 60 * 60
    print(f"Age in seconds: {age_seconds()} seconds")


print("Age in seconds")
age_seconds()


# reusing names results in error or confusing

friends = ["Rolf", "Bob"]


def add_friend():
    friend_name = input("Name:")
    friends = friends + [friend_name]


add_friend()
print("hey")

# function only runs if called

def add_friends():
    friends.append("Rolf")

friends = []
add_friend()

print(friends)