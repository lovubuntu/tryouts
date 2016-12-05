defmodule Magician do
  def guess(actual_number, range) do
    check_number(actual_number, mid_of_range(range), range)
  end
  #
  # def check_number(actual_number, range) when mid_of_range(range) == actual_number, do: actual_number
  # def check_number(actual_number, range) when mid_of_range(range) > actual_number do
  #   start..finish = range
  #   new_end = mid_of_range(range)-1
  #   check_number(actual_number, start..new_end)
  # end
  # def check_number(actual_number, range) when mid_of_range(range) < actual_number do
  #   start..finish = range
  #   new_start = mid_of_range(range)+1
  #   check_number(actual_number, new_start..finish)
  # end

  def check_number(actual, guess, _) when actual == guess, do: IO.puts actual
  def check_number(actual, guess, start..finish) when guess > actual do
    IO.puts "Is it #{guess}"
    check_number(actual, mid_of_range(start..finish), start..guess-1)
  end
  def check_number(actual, guess, start..finish) when guess < actual do
    IO.puts "closer to #{guess}?"
    check_number(actual, mid_of_range(start..finish), guess+1..finish)
  end
  def mid_of_range(a..b), do: div(a+b,2)
end

Magician.guess(123, 100..200)
