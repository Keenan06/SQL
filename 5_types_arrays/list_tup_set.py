lists = ["Bob", "Rolf", "Anne"]
tuples = ("Bob", "Rolf", "Anne")
sets = {"Bob", "Rolf", "Anne"}

# Accessing individual items lists and tuples using index

print(lists[0])
print(tuples[0])
# print(sets[0]) wont work cause sets unordered

# Modify individual items in list
lists[0] = "Smith"
# tuples cant be changed

print(lists)
print(tuples)

# Append function

lists.append("Keenan")
print(lists)

# Add function with sets
sets.add("Ambrochia")
print(sets)

# sets cant have duplicates

sets.add("Adam")
print(sets)
