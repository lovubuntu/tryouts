defmodule Times do
  def double(n) do
    n * 2
  end

  def triple(n), do: n *3

  def quadruple(n) do
    double(double(n))
  end
end

IO.puts "Double value of 42 is #{Times.double(42)}"
IO.puts "3 times the value of 10 is #{Times.triple(10)}"
IO.puts "Now 4 times of 10 is #{Times.quadruple(10)}"

# Finally we reach the factorial!!! afteral this is functional programming rit?!! :)
defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end

IO.puts Factorial.of(12)
IO.puts Factorial.of(0)

defmodule SumOfNumbers do
  def upto(0), do: 0
  def upto(n) do
    n + upto(n-1)
  end
end

IO.puts "Sum of numbers upto 42 is #{SumOfNumbers.upto(42)}"
