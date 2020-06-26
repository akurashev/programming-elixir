fizzbuzzer = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizzbuzz = fn
  n -> fizzbuzzer.(rem(n, 3), rem(n, 5), n)
end
