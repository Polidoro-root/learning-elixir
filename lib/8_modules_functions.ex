defmodule Math do
  def sum a, b do
    a + b
  end

  # The trailing question mark (?) means that this function returns a boolean
  def zero?(0), do: true

  def zero?(x) when is_integer(x), do: false
end

fun = &Math.zero?/1

fun.(0)

#Default arguments
defmodule Concat do
# If a function with default values has multiple clauses, it is required to create a function head (a function definition without a body) for declaring defaults:
  def join a, b, sep \\ " "

  #The leading underscore in _sep means that the variable will be ignored in this function
  def join a, b, _sep when is_nil b do: a

  def join a, b, sep do: a <> sep <> b
end


IO.puts Concat.join("Hello", "world")      #=> Hello world
IO.puts Concat.join("Hello", "world", "_") #=> Hello_world
