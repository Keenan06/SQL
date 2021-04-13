name = "Bob"
greeting = "Hey Bob"
print(greeting)

name = "Rolf"
print(greeting)

greeting = f"Hey, {name}"
print(greeting)

name = "Ambre"
print(
    greeting
)
print(
    f"Hey, {name}"
)

greeting = "Hello, {}"
with_name = greeting.format("Rolf")
print(with_name)
longer_phrase = "Hey, {}. Today is {}"
formatted = longer_phrase.format("Rolf", "Monday")
print(formatted)