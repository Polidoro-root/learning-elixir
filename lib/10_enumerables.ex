# Elixir also provide ranges
Enum.map 1..3, fn x -> x * 2 end #=> [2, 4, 6]

# Eages vs Lazy
# All functions in the Enum module are eager.
odd? = &(rem &1, 2 != 0)

Enum.filter 1..3, odd? #=> [1, 3]

# Pipe operator (|>)
# Pass the returned value as first param to next function
Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?))
# using |> and Stream
1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum

# Streams are lazy, composable enumerables
stream = Stream.cycle [1, 2, 3]
Enum.take stream, 10 #=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

hello = Stream.unfold "hello", &String.next_codepoint/1
Enum.take hello, 3 #=> ["h", "e", "l"]

# fetch the first 10 lines of the file
file = File.stream "path/to/file"
Enum.take file, 10
