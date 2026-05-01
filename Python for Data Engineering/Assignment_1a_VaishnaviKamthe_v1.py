# Q1). Write a program to take a sentence as input and print frequency of each alphabet. Use appropriate python data structure. Print the most frequent alphabet. 
def alphabet_frequency(sentence):
    freq = {}

    for ch in sentence.lower():
        if ch.isalpha():
            if ch in freq:
                freq[ch] += 1
            else:
                freq[ch] = 1

    print("Alphabet Frequency:")
    for key, value in freq.items():
        print(key, ":", value)

    max_char = max(freq, key=freq.get)
    print("\nMost frequent alphabet:", max_char)


sentence = input("Enter a sentence: ")
alphabet_frequency(sentence)

# Q2). Generate the following pattern.

n = int(input("Enter odd number of rows: "))

for i in range(n):
    for j in range(n):
        if i == j or i + j == n - 1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    print()

""" Q.3) Write a program to read any .txt file.

- Print the number of lines in the file.

- Print the number of words in a file.

- Calculate and display word and it’s frequency.

- Print Nth most appearing word. N should be input from the user.


Use functions, exception handling wherever applicable.
"""

def read_file_analysis(filename, n):
    try:
        with open(filename, 'r') as f:
            lines = f.readlines()

        print("Number of lines:", len(lines))

        words = []
        for line in lines:
            words.extend(line.split())

        print("Number of words:", len(words))

        freq = {}
        for word in words:
            word = word.lower()
            if word in freq:
                freq[word] += 1
            else:
                freq[word] = 1

        print("\nWord Frequencies:")
        for k, v in freq.items():
            print(k, ":", v)

        sorted_words = sorted(freq.items(), key=lambda x: x[1], reverse=True)

        if n <= len(sorted_words):
            print(f"\n{n}th most frequent word:", sorted_words[n-1])
        else:
            print("N is out of range")

    except FileNotFoundError:
        print("File not found. Please check filename.")
    except Exception as e:
        print("Error:", e)

filename = input("Enter file name: ")
n = int(input("Enter N: "))
read_file_analysis(filename, n)

# Q. 4) Given a number, write a program to increase all its even digits by 1 and decrease all odd digits by 1.

def modify_number(num):
    result = ""

    for digit in str(num):
        d = int(digit)

        if d % 2 == 0:
            d += 1
        else:
            d -= 1

        result += str(d)

    print("Modified number:", result)


# Input
num = input("Enter a number: ")
modify_number(num)