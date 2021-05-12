x, y = 5, 11

studentAttendance = {"Rolf": 96, "Bob": 80, "Anne": 100}

for student, attendance in studentAttendance.items():
    print(f"{student}: {attendance}")

# Example

people = [("Bob", 42, "Mechanic"), ("Ronald", 24, "Artist"), ("Sam", 32, "Lecturer")]
for name, age, profession in people:
    print(f"Name: {name}, Age: {age}, Profession: {profession}")

# Better

for person in people:
    print(f"Name: {person[0]}, Age: {person[1]}, Profession: {person[2]}")

# Underscore = ignore

person = ("Bob", 42, "Mechanic")
name, _, profession = person

print(name, profession)

# collecting values

head, *tail = [1, 2, 3, 4, 5]
print(head)
print(tail)

*head, tail = [1, 2, 3, 4, 5]
print(head)
print(tail)
