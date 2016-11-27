# List concatenation
list_concat = fn (list1, list2) -> Enum.concat(list1, list2) end

concatenated_list = list_concat.([1,2,4,5],[345,23,2])
IO.puts(concatenated_list)

# Sum a list of values
sum_three_nos = fn(a,b,c) -> a + b + case end

sum = sum_three_nos.(1,6,345)
IO.puts(sum)

# Pair tuple to list
tuple_to_list = fn (tuple) -> Tuple.to_list(tuple) end

list_values = tuple_to_list.({12,234,345,346,4352})
# Reason: http://stackoverflow.com/questions/32804904/how-to-print-out-a-maps-array-values-in-elixir
IO.inspect list_values, char_lists: :as_lists
