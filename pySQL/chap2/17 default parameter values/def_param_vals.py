def add(x, y=3):
    print(x + y)


add(5)
add(5, 8)
# add(y=2) incorrect because there is an x value missing

# default parameters go after non-default param

default_y = 3


def add(x, y=default_y):
    sum1 = x + y
    print(sum1)


add(2)

default_y = 4
print(default_y)
add(2)