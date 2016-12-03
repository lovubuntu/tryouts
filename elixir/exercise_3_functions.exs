prefix = fn(first) ->
            fn(second) -> "#{first} #{second}" end
          end
mrs = prefix.("Mrs")
IO.puts(mrs.("Kannan"))

IO.puts(prefix.("Programming").("Elixir"))

# Function passing
double = fn(n) -> n*2 end
apply = fn(fun, args) -> fun.(args) end
IO.puts apply.(double, 40)

# Pinned values
defmodule User do
  def login(username, secretMessage) do
    fn
      ^username -> "Your secret message is #{secretMessage}"
      _ -> "You should first set your secret message by logging in"
    end
  end
end
admin = "Prabu"
logged_in_user = User.login(admin, "Shhh!!! Don't tell anyone")
IO.puts logged_in_user.(admin)
IO.puts logged_in_user.("Someone")

# Short circuited anonymous function
triple = fn(n) -> n*3 end
triple_short = &(&1*3)
IO.puts triple.(45)
IO.puts triple_short.(45)

# Since [] and {} are operators even literals and tuples can be turned to functions
div_rem = &{div(&1,&2), rem(&1, &2)}
IO.inspect(div_rem.(100,7))

# Aliter for short circuit
putter = &IO.puts/1
putter.("Redirecting to the kernel level IO.puts")
reminder = &rem/2
putter.(reminder.(123,43))

# Rewrite the following

# Enum.map([1,2,3,4,5,6], fn(n) -> n*2 end)
doubled_list = Enum.map([1,2,3,4,5,6], &(&1*2))

# Enum.each([1,2,3,4,5,6], fn(n) -> IO.inspect n end)
Enum.each(doubled_list, &(IO.inspect/1))
