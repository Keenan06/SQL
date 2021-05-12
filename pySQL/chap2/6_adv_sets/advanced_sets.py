
# Difference 2 sets

friends = {"Bob", "Rolf", "Anne"}
abroad = {"Bob", "Anne"}

# difference function
local = friends.difference(abroad)
print(local)
# Returns empty set
print(abroad.difference(friends))

# Union of two sets
local = {"Rolf"}
abroad = {"Bob", "Anne"}

# Union counts total
friends = local.union(abroad)
print(friends)

# two sets intersect

art = {"Bob", "Jen", "Rolf", "Charlie"}
science = {"Bob", "Jen", "Adam", "Anne"}

# intersection returns the values that are the same in two lists

both = art.intersection(science)
print(both)