defmodule MyList do
  def primes(n) do
    for number <- span(2, n), prime?(number), do: number
  end

  defp prime?(number) do
    !Enum.any?(span(2, number - 1), &(rem(number, &1) == 0))
  end

  defp span(from, to) when from <= to, do: [from | span(from + 1, to)]
  defp span(_, _), do: []
end
