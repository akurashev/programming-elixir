defmodule MyList do
  def mapsum(list, func) do
    list
    |> map(func)
    |> reduce(0, &(&1 + &2))
  end

  defp map([], _func), do: []
  defp map([head | tail], func), do: [func.(head) | map(tail, func)]

  defp reduce([], acc, _func), do: acc
  defp reduce([head | tail], acc, func), do: reduce(tail, func.(head, acc), func)
end

MyList.mapsum([1, 2, 3], &(&1 * &1)) # 14
