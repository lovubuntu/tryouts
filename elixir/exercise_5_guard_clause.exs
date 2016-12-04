defmodule Guard do
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is an atom"
  end
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_list(x) do
    IO.inspect "#{x} is a list"
  end
end

Guard.what_is(:wer)
Guard.what_is(123)
Guard.what_is([1,2,3,4,5])

defmodule Formatter do
  def round(x) when is_float(x) do
    IO.puts("#{x} when rounded to float will give #{Float.round(x)}")
  end
  def round(x) when is_number(x) do
    IO.puts "#{x} when rounded to int... wait... what is the point of rounding an int?"
  end
end

Formatter.round(123.456)
Formatter.round(1234)
