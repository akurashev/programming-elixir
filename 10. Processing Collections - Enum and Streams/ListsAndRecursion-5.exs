defmodule MyEnum do
  def all?(collection, func \\ fn x -> x end) do
    reduce(collection, true, fn item, acc -> acc && !!func.(item) end)
  end

  def each(list, func) do
    reduce(list, nil, fn item, _acc -> func.(item) end)
  end

  def filter(list, func) do
    list
    |> reduce([], fn item, acc ->
      if !!func.(item) do
        [item | acc]
      else
        acc
      end
    end)
    |> reverse
  end

  def split(list, count) when count >= 0 do
    {head, tail, _} = reduce(list, {[], [], count}, fn item, {head, tail, count} ->
      if count > 0 do
        {[item | head], tail, count - 1}
      else
        {head, [item | tail], count}
      end
    end)
    {reverse(head), reverse(tail)}
  end
  def split(list, count) when count < 0 do
    {first, second} = list
    |> reverse
    |> split(-count)

    {reverse(second), reverse(first)}
  end

  def take(list, count) when count >= 0 do
    {select, _} = reduce(list, {[], count}, fn item, {select, count} ->
      if count > 0 do
        {[item | select], count - 1}
      else
        {select, count}
      end
    end)
    reverse(select)
  end
  def take(list, count) when count < 0 do
    list
    |> reverse
    |> take(-count)
    |> reverse
  end

  defp reverse(list), do: reduce(list, [], &([&1 | &2]))
  defp reduce([], acc, _func), do: acc
  defp reduce([head | tail], acc, func), do: reduce(tail, func.(head, acc), func)
end
