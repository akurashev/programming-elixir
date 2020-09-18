defmodule Ok do
  def ok!({:ok, data}), do: data
  def ok!(data), do: raise inspect(data)
end

Ok.ok! File.open("missing")
# ** (RuntimeError) {:error, :enoent}
#     ControlFlow-3.exs:3: Ok.ok!/1
