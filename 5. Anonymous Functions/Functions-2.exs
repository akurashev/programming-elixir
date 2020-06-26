fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizzbuzz.(0, 0, 3) # FizzBuzz
fizzbuzz.(0, 2, 3) # Fizz
fizzbuzz.(1, 0, 3) # Buzz
fizzbuzz.(1, 2, 3) # 3
