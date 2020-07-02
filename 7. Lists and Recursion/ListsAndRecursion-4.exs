defmodule MyList do
  def span(from, to) when from <= to, do: [from | span(from + 1, to)]
  def span(_, _), do: []
end

MyList.span(3, 5) # [3, 4, 5]
