print("Printing the sum of current and previous number in a range(10)")
previous_num = 0

# loop from 1 to 10
for i in range(1, 11):
    x_sum = previous_num + i
    print(" Sum: ", previous_num + i)
    # modify previous number
    # set it to the current number
    previous_num = i
