# accept input string from a user
word = input('Enter word ')
print("Original String:", word)
size = len(word)

# 0 to start with first character
#size-1 because index starts with 0
# 2 to get the characters present at even index like 0, 2, 4
print("Printing only even index chars")
for i in range(0, size - 1, 2):
    print("index[", i, "]", word[i])
