defmodule DefaultParams do
  def print_args(p1, p2 \\ 2, p3 \\ 4, p4 \\8) do
    IO.inspect([p1, p2, p3, p4])
  end
end

DefaultParams.print_args(24)
DefaultParams.print_args(12, 10, 23, 42)

defmodule ConfusionLessDefault do
  # The same default argument gets applied to all functions and guard clause will do the rest
  def print_args(p1, p2 \\"world")

  def print_args(p1, p2) when is_bitstring p2 do
    IO.puts "Hello #{p1} welcome to #{p2}"
  end

  def print_args(p1, p2) when is_number(p2) do
    IO.puts "Looks like you passed a number as the second argument"
    IO.inspect [p1, p2]
  end
end

ConfusionLessDefault.print_args("Lovubuntu")
ConfusionLessDefault.print_args("Prince", 234)
ConfusionLessDefault.print_args("Prince", "Green")
ConfusionLessDefault.print_args(42)
