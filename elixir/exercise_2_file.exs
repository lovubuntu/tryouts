handle_open = fn
  {:ok, file} -> "First Line: #{IO.read(file, :line)}"
  {_,   error} -> "Error: #{:file.format_error(error)}"
end

IO.puts(handle_open.(File.open("exercise_2_file.exs")))
IO.puts(handle_open.(File.open("123.exs")))

fizz_buzz = fn
  (a,b,c) -> cond do
      a+b == 0 -> "FizzBuzz"
      a == 0 -> "Fizz"
      b == 0 -> "Buzz"
      true -> c
  end
end

IO.puts(fizz_buzz.(1,2,3))

fizz_buzz_generator = fn
  (n) -> fizz_buzz.(rem(n,3), rem(n,5), n)
end

IO.puts(fizz_buzz_generator.(10))
IO.puts(fizz_buzz_generator.(11))
IO.puts(fizz_buzz_generator.(12))
IO.puts(fizz_buzz_generator.(13))
IO.puts(fizz_buzz_generator.(14))
IO.puts(fizz_buzz_generator.(15))
IO.puts(fizz_buzz_generator.(16))
