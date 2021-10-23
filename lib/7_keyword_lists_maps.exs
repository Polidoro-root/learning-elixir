# Keyword lists
list = [{:a, 1}, {:b, 2}] # [a: 1, b: 2]

# Keys must be atoms
# Keys are orderer, as specified by the developer
# keys can be giver more than once

# Keyword lists are used in elixir mainly for passing optional values.

# Maps
map = %{:a => 1, 2 => :b}

# Maps allow any value as key
# Maps keys do not follow any ordering
# Maps are very useful with pattern matching

Map.get(map, :a)

Map.put(map, :c, 3)

Map.to_list(map)

# Maps have the following syntax for updating a key's value
%{map | :b => 3}

# Map access atom keys
#
map.a # 1
map.b # 3

# Nested data structures
# when we have structures inside structures
# elixir provide us put_in/2 and update_in/2 and other macros
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

# put_in
users = put_in users[:jhon].age, 31

# update_in
users = update_in users[:mary].languages, fn languages ->
  List.delete languages, "Clojure" end


