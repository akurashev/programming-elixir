prefix = fn
  pre -> fn name -> "#{pre} #{name}" end
end

mrs = prefix.("Mrs")
mrs.("Smith") # Mrs Smith

prefix.("Elixir").("Rocks") # Elixir Rocks
