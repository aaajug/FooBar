# Environment
- Ruby programming language
- To run (terminal): `ruby main.rb`
- May also add `--benchmark` flag to output benchmark measurements:
  `ruby main.rb --benchmark`

# Files
- main.rb: contains final answer for the given problem
- alternatives.rb: contains alternative solutions (different approach)
- `FooBar/` : web + javascript implementation for testing in browser (TO DO: Add GH page link) 

# Problem
Write a function called FooBar that takes input integer n and prints all the numbers from 1 up to n in a new line. If the number is divisible by 3, then print "Foo"; if the number is divisible by 5, then print "Bar"; and if the number is divisible by both 3 and 5, then print "FooBar". Otherwise, just print the number.

Sample Input:\
15

Sample Output:\
1\
2\
Foo\
4\
Bar\
Foo\
7\
8\
Foo\
Bar\
11\
Foo\
13\
14\
FooBar