#Defining structs
defmodule User do
  defstruct name: "John", age: 27
end

%User{}

# Accessing and updating structs
john = %User{}

john.name

jane = %{john | name: "Jane"}

%{jane | oops: :field}
# KeyError

%User{name: name} = john

name

%User{} = %{}
# MatchError

# Structs are bare maps underneath
john.__struct__
# User

# structs work with the functions from Map module
jane = Map.put %User{}, :name, "Jane"

Map.merge jane %User{name: "John"}

Map.keys jane

# Default values and required keys
defmodule Product do
  defstruct [:name]
end

%Product{}
#=> %Product{name: nil}

defmodule User do
  # in this case, you must first specify the fields which implicitly default to nil
  defstruct [:email, name: "John", age: 27]
end

%User{}
#=> %User{age: 27, email: nil, name: "John"}

defmodule Car do
  # you can enforce that certain keys havo to be specified when creating struct
  @enforce_keys [:make]
  defstruct [:model, :make]
end

%Car{}
#=> ArgumentError
