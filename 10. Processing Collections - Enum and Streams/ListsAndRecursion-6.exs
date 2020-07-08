# version 1
defmodule MyEnum do
  def flatten([]), do: []
  def flatten([head | tail]) when is_list(head) do
    flatten(head) ++ flatten(tail)
  end
  def flatten([head | tail]) do
    [head | flatten(tail)]
  end
end

# verstion 2
defmodule MyEnum2 do
  def flatten(list), do: Enum.reverse(do_flatten(list, []))

  defp do_flatten([], acc), do: acc
  defp do_flatten([head | tail], acc) when is_list(head) do
    do_flatten(tail, do_flatten(head, acc))
  end
  defp do_flatten([head | tail], acc) do
    do_flatten(tail, [head | acc])
  end
end

MyEnum.flatten([1, [2, 3, [4]], 5, [[[6]]]]) # [1, 2, 3, 4, 5, 6]
MyEnum2.flatten([1, [2, 3, [4]], 5, [[[6]]]]) # [1, 2, 3, 4, 5, 6]
