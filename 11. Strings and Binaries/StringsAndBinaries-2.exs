defmodule MyString do
  def anagram?(word1, word2), do: word1 |> to_charlist |> Enum.sort == word2 |> to_charlist |> Enum.sort
end

MyString.anagram? 'silent', 'listen' # true
MyString.anagram? "silent", "listen" # true

MyString.anagram? 'silent', 'listel' # false
MyString.anagram? "silent", "listel" # false
