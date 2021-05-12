def add(x, y):
    print(x + y)


add(5, 8)
result = add(5, 8)
print(result)

# returning vals


def add(x, y):
    return x + y


add(1, 2)
result = add(x + y)
print(result)

# returning terminates function


def divide(dividend, divisor):
    if divisor != 0:
        return dividend / divisor
    else:
        return "Incorrect"


result = divide(15, 3)
print(result)

another = divide(15, 0)
print(another) # 'incorrect'