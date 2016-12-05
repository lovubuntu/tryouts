defmodule Magician do
  def guess(actual_number, range) do
    guess = mid_of_range(range)
    IO.puts "Is it #{guess}?"
    check_number(actual_number, guess, range)
  end

  def check_number(actual, guess, _) when actual == guess, do: actual

  def check_number(actual, guess, start.._) when guess > actual do
    guess(actual, start..guess-1)
  end

  def check_number(actual, guess, _..finish) when guess < actual do
    guess(actual, guess+1..finish)
  end

  defp mid_of_range(start..finish), do: div(start + finish, 2)
end

IO.puts Magician.guess(123, 100..200)

IO.puts Magician.mid_of_range(12..12345)
