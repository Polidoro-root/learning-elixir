  # IO module
  IO.puts "Hello world"

  IO.gets "yes or no?"

  IO.puts :stderr, "hello world"

  # File module
  # By default files are opened in binary mode
  {:ok, file} = File.open "hello", [:write]

  IO.binwrite file, "world"

  File.close file

  File.read "hello"

  File.read! "hello"

  {:ok, body} = File.read file

# Therefore, if you don’t want to handle the error outcomes, prefer using File.read!/1.

# Path module
Path.join "foo", "bar"

Path.expand "~/hello"

# Processes
{:ok, file} = File.open "hello", [:write]

File.close file

IO.write file, "is anybody out there"
#=>{:error, :terminated}

pid = spawn fn -> receive do: (msg -> IO.inspect msg) end

IO.write pid, "hello"
#{:io_request,
#  {:put_chars, :unicode, "hello"}
#}

# iodata and chardata
IO.puts 'hello world'

IO.puts ['hello', ?\s, "world"]
