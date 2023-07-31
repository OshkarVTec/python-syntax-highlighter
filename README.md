# python-syntax-highlighter
A python syntax highlighter coded in Elixir. 
To run the code, use the following commands:
```
mix deps.get
mix test
```
The code will generate a new file called output.html.
To change the input code, copy your code into the test.py file.
## Syntax Highlighter Categories
The language we chose to develop our syntax highlighter is Python since it is currently the most widely used programming language in the world. The basic lexical categories we included in the highlighter are as follows:
- Keywords
- Identifiers
- Strings
- Operators
- Delimiters
- Integers
- Floating point numbers
- Comments

## Proposed Solution, Algorithms, and Execution Time
The program utilizes regular expressions to identify each of the aforementioned lexical categories. The lexical categories not included are due to their complex regular expressions or requiring additional context analysis, as in the case of soft keywords.
The algorithm is as follows:

    The .py file is read and passed through regular expressions, where each category is separated into a tuple containing the name of the category.
    The list of tuples is then read, and for each tuple, the corresponding output is written to the .html file. Depending on the category, a different style class is written inside the div that contains the text.
    A .css file is included, defining the style for each of the classes.
    
The program's execution time is 0.1 seconds for a test file with 102 lines.
## Time complexity
The complexity is linear with respect to the number of characters in the input document, as the entire document is read and a list of tuples with tokens is generated, which has a length smaller than the number of characters. Later, the list of tokens is traversed linearly to generate the HTML document, and the conversion has a complexity of O(1). Therefore, the total complexity of the code is O(n).
