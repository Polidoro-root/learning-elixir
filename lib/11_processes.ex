pid = spawn fn -> 1 + 2 end

Process.alive? pid

# get pid current process
self()

# send and receive
send self(), {:hello, "world"}

receive do
  {:hello, msg} -> msg
  {:world, _msg} -> "won't match"
end

receive do
  {:hello, msg} -> msg
after
  1_000 -> "nothing after 1s"
end

parent = self()

spawn fn -> send parent, {:hello, self()} end

# The inspect/1 function is used to convert a data structure’s internal representation into a string,
receive do
  {:hello, pid} -> "Got hello from #{inspect pid}"
end

send self(), :hello

# flush()

# LINKS
spawn_link fn -> raise "oops" end

# TASKS
Task.start fn -> raise "oops" end

# STATE
defmodule KV do
  def start_link do
    Task.start_link fn -> loop %{} end
  end

  defp loop map do
    {:get, key, caller} ->
      send caller, Map.get(map, key)
      loop map
    {:put, key, value} -> 
      loop Map.put map, key, value
  end
end

Process.register pid, :kv

send :kv, {:get, :hello, self()}

{:ok, pid} = Agent.start_link fn -> %{} end

Agent.update pid, fn map -> Map.put map, :hello, :world end

Agent.get pid, fn map -> Map.get map, :hello end
