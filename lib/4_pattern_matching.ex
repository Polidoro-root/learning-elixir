# Pattern matching
{a, b, c} = {:hello, "world", 42}
# a = :hello
# b = "world"
# c = 42

{a, b, c} = {:hello, "world"} #error, no match

{a, b, c} = [:hello, "world", 42] # error, no match different types

{:ok, result} = {:ok, 13} # result = 13

{:ok, result} = {:error, :oops} # no match

[a, b, c] = [1, 2, 3]

# a list also supports matching head and tail
[head | tail] = [1, 2, 3]

# PIN OPERATOR
x = 1
^x = 2 # match error, 1 = 2

[^x, 2, 3] = [1, 2, 3]

{y, ^x} = {2, 1}

{y, ^x} = {2, 2} #match error

# use _ (underscore) to ignore a pattern
[head | _] = [1, 2, 3]

# you cannot make function calls on the left side of a match
# length([1, [2], 3]) = 3 ## error

