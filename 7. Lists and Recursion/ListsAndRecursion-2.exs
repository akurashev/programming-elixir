defmodule MyList do
  def max(list) do
    list
    |> reduce(nil, &reducer/2)
  end

  defp reducer(item, nil), do: item
  defp reducer(item, acc) when item > acc, do: item
  defp reducer(item, acc) when item <= acc, do: acc

  defp reduce([], acc, _func), do: acc
  defp reduce([head | tail], acc, func), do: reduce(tail, func.(head, acc), func)
end
