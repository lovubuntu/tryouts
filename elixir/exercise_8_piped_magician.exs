defmodule MagicianUpgraded do
  def predict(actual, range) do
    IO.puts "Is it #{mid_of_range(range)}?"
    mid_of_range(range)
      |> is_match(actual, range)
  end

  def is_match(guess, actual, _) when actual == guess, do: actual
  def is_match(guess, actual, start.._) when actual < guess do
    predict(actual, start..guess-1)
  end
  def is_match(guess, actual, _..finish) when actual > guess do
    predict(actual, guess+1..finish)
  end

  defp mid_of_range(start..finish) do
    div(start + finish, 2)
  end
end

IO.puts MagicianUpgraded.predict(237, 1..1000)
