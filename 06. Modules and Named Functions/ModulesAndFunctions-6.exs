defmodule Chop do
  def guess(actual, range) do
    guess = half(range)
    IO.puts "Is it #{guess}"
    guess(actual, range, guess)
  end

  defp guess(actual, _, actual), do: actual

  defp guess(actual, _..b, guess) when actual > guess do
    guess(actual, guess..b)
  end

  defp guess(actual, a.._, guess) when actual < guess do
    guess(actual, a..guess)
  end

  defp half(a..b) do
    div(a + b, 2)
  end
end
