# string concatenation
str1 = "  Hello "
str2 = "World "
str3 = str1 + str2
print(str1, str2, str3, sep="\n")


# length of the string
print("length of str3", len(str3))

#string upper and lower case
print(str3.upper())
print(str3.lower())

# replace string
print("modified string : ", str3.replace("World", "Python"))

#Split the string
print("split of s3 ",str3.split(" "))

# strip the string
#The strip() function is a Python string method that removes unwanted characters from the beginning and end of a string. Its syntax is string.strip([characters]). If no argument is provided, it removes leading and trailing whitespace such as spaces, tabs (\t), and newlines (\n). If specific characters are provided, it removes any combination of those characters only from the start and end of the string, not from the middle. For example, " Hello ".strip() returns "Hello", and "###Hello###".strip("#") returns "Hello". However, "Hello".strip("l") returns "Hello" because l is not at the beginning or end. To remove characters only from the left, use lstrip(), and to remove them only from the right, use rstrip(). If you want to remove all occurrences of a character throughout the string, use replace() instead of strip().
print("striped str3: ",str3.strip())

str4 = "Hello, this is python world"
str5 = "python"
if str5 in str4:
    print(str5, "is in str4")