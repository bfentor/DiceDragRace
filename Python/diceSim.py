import random

count = 0
total = 0
numThrows = 500000
arr = [0, 0, 0, 0, 0, 0]

i = 0
while (i < numThrows):
    rand = random.randint(0, 5)
    arr[rand] = arr[rand]+1
    total += rand+1
    i += 1

print("Threw a 6-sided die 500,000 times.")
print("Results:")
print("Side:    1        2        3        4        5        6")
print(f"Count:   {arr[0]}   {arr[1]}   {arr[2]}   {arr[3]}   {arr[4]}   {arr[5]}")
print("Sum of throws:", total)
