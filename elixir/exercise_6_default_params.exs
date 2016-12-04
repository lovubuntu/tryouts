defmodule DefaultParams do
  def print_args(p1, p2 \\ 2, p3 \\ 4, p4 \\8) do
    IO.inspect([p1, p2, p3, p4])
  end
end

DefaultParams.print_args(24)
DefaultParams.print_args(12, 10, 23, 42)
