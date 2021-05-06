users = [
    (0, "Keenan", "moneyballs"),
    (1,"Ambre", "GangGang13"),
    (2, "Kyle", "Etzik26"),
    (3, "Kayla", "ash23"),
]

username_mapping = {user[1]: user for user in users}
userid_mapping = {user[0]: user for user in users}

print(username_mapping)
print(username_mapping["Keenan"])

# useful for login

username_input = input("Enter username:")
password_input = input("Enter password:")

_, username, password = username_mapping[username_input]

if password_input == password:
    print("Correct")
else:
    print("Incorrect")