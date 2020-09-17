defmodule Capitalize do
  def capitalize_sentences(string) do
    string
    |> String.split(". ")
    |> Enum.map(&String.downcase/1)
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(". ")
  end
end

Capitalize.capitalize_sentences("oh. a DOG. woof. ") # "Oh. A dog. Woof. "
