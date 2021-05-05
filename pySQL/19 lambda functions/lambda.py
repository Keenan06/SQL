def add(x, y):
    return x + y


print(add(5, 7))

# written as lambda

add = lambda x, y: x + y
print(add(5, 7))

# four parts: lambda, param, ':', return value
# lambdas are short functions


def double(x):
    return x * 2


sequence = [1, 3, 5, 9]

doubled = [
    double(x) for x in sequence
]
doubled = map(double, sequence)
print(list(doubled))


# written using lambda

sequence = [1, 3, 5, 9]

doubled = map(lambda x: x * 2, sequence)
print(list(doubled))
