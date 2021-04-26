day_of_week = input("Day of week?")

if day_of_week == "Monday":
    print("Enjoy the rest of your week")
elif day_of_week == "Friday":
    print("Take some time out of your schedule for yourself")
else:
    print("You're closer to the weekend than you were yesterday")

# lower case

day_of_week = input("Day of week?").lower()

if day_of_week == "monday":
    print("Enjoy the rest of your week")
elif day_of_week == "friday":
    print("Take some time out of your schedule for yourself")
else:
    print("You're closer to the weekend than you were yesterday")