defmodule MyString do
  def printable?([]), do: true
  def printable?([head | _]) when head < ?\s or head > ?~, do: false
  def printable?([_ | tail]), do: printable?(tail)
end

MyString.printable?('test') # true
MyString.printable?('тест') # false
