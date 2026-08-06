import re #Regular Expressions
#It is used to search, match, and manipulate text using patterns.

text = "brown The quick brown fox"
pattern = "brown"

search = re.sub(pattern, text,)
if search:
    print("Pattern found:", search.group())
else:
    print("Pattern not found")