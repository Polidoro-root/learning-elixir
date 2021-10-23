# 1 - integer
  # 0x1f - integer
  # 1.0 - float
  # true - boolean
  # :atom - atom / symbol
  # "elixir" - string
  # [1, 2, 3] - list
  # {1, 2, 3} - tuple 

  # basic arithmetic
  div(10, 2)

  div 10, 2

  rem 10, 3

  # floats in Elixir are 64-bit double precision
  round(3.58) # 4
  trunc(3.58) # 3

  is_boolean(true)

  is_boolean(1)

  #Atoms
  #
  #Is a constant whose value is its own name
  :apple # = apple

  :orange # = orange

  :watermelon # = watermelon

  # boolean true and false are also atoms
  #true == :true

  is_atom(false) # true

  is_boolean(:false) # true

  # Elixir has a construct called aliases
  # Aliases start in uppercase and are also atoms
  is_atom(BasicTypes) # true

  #Strings

  # interpolation
  "hello #{:world}"

  #"hello\nworld" # hello\nworld

  # IO.puts "hello\nworld"
  #hello
  #world
  #:ok

  # Strings in Elixir are represented internally by contiguous sequences of bytes known as binaries
  is_binary "hellö" # true

  byte_size "hellö" # 6, ö has 2 bytes

  String.length "hello" # 5

  String.upcase "hello" # HELLO

  # Anonymous functions
  add = fn a, b -> a + b end

    # The dot (.) between variable and parentheses is required to invoke and anonymous function
    add.(1, 2) # 3

    double = fn a -> add.(a, a) end

    double.(2) # 4

    # (Linked) Lists
    [1, 2, true, 3]

    length [1, 2, 3] # 3

    [1, 2, 3] ++ [4, 5, 6] # [1, 2, 3, 4, 5, 6]

    [1, true, 2, false, 3, true] -- [true, false] # [1, 2, 3, true]

    list = [1, 2, 3]
    hd(list) # 1
    tl(list) # [2, 3]

    # hd [] # throw an error

  #use i/1 to retrive information about what's happening
  
  # single quotes are charlists
  # double quotes are strings
  
  # TUPLES
  # {:ok, "hello"}

  # tuple_size {:ok, "hello"} # 2

  tuple = {:ok, "hello"}

  elem tuple, 1 # hello

  put_elem tuple, 1, "world"

  # LISTS OR TUPLES
  #
  # Lists are stored in memory as linked lists
  #
  # Tuples are stored contiguosly in memory

