def add(x, y):
    result = x + y
    print(result)


add(1, 3)


def say_hello():
    print("Hello")


say_hello("Bob") # no parameters so can't have arguments

# parameter = argument


def say_hello(name):
    print(f"Hello, {name}")


say_hello(name="Bob")


def divide(dividend, divisor):
    if divisor != 0:
        print(dividend/divisor)
    else:
        print("Can't have 0 as divisor")


divide(dividend=15, divisor=3)
divide(15, 0)
divide(15, divisor=0) # ok
divide(dividend=14, 0) # Incorrect. Named arguments go after positional arguments