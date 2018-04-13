defmodule Problem1 do
def number_of_multiples(num, divisor) do
  div(num - 1, divisor)
end

def sequence_sum(max) do
  div(max * (max + 1),  2)
end

def multiply_by(sum, divisor) do
  sum * divisor
end

def sum_of_multiples(divisor, upper_bound) do
   number_of_multiples(upper_bound, divisor)
   |> sequence_sum
   |> multiply_by(divisor)
end

def solve(divisor_1, divisor_2, upper_bound) do
  sum_of_multiples(divisor_1,upper_bound) + sum_of_multiples(divisor_2, upper_bound) - sum_of_multiples(divisor_1 * divisor_2, upper_bound)
end

end

Problem1.solve(3, 5, 1000) |> IO.puts
