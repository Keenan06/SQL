friendAges = {"Rolf": 24, "Adam": 30, "Anne": 27}

friendAges["Sampson"] = 23

print(friendAges)
print(friendAges["Sampson"])

# A list of dictionaries

friends = [
    {"name": "Keenan Pienaar", "age": 24},
    {"name": "Ambrochia Carugo", "age": 30},
    {"name": "Kyle Kats", "age": 50},
]

print(friends)

# Iteration
studentAttendance = {"Keeny": 81, "Amby": 100, "Aidan": 79}

for student in studentAttendance:
    print(f"{student}: {studentAttendance[student]}")

# Improved

for student, attendance in studentAttendance.items():
    print(f"{student}: {attendance}")

# 'in' keyword

if "Keeny" in studentAttendance:
    print(f"Keeny: {studentAttendance[student]}")
else:
    print("Keeny isn't a student")

# Average using '.values()'

attendanceValues = studentAttendance.values()
print(sum(attendanceValues) / len(attendanceValues))