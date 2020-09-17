defmodule Align do
  def center(strings) do
    max = max_length(strings)

    strings
    |> Enum.each(&(aligner(&1, max)))
  end

  defp aligner(string, max) do
    len = String.length(string)
    spaces = trunc((max - len) / 2)

    string
    |> String.pad_leading(spaces + len)
    |> IO.puts
  end

  defp max_length(strings) do
    strings
    |> Enum.map(&String.length/1)
    |> Enum.max
  end
end

Align.center(["cat", "zebra", "elephant"])
#  cat
# zebra
#elephant
