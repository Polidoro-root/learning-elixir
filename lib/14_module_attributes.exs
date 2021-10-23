# @moduledoc - provides documentation for the current module
# @doc - provides documentation for the function or macro that follows the attribute
# @spec - provides a typespec for the function that follows the attribute
# @behaviour - used for specifying an OTP or user-defined behaviour

defmodule MyServer do
  @moduledoc "My server code."

  # As "constants"
  @initial_state %{host: "127.0.0.1", port: 3456}

  IO.inspect @initial_state
end

