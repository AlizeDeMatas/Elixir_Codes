defmodule MyEnum do
    def map(list, f) do map(list, f, []) end 
    def map([], _, res) do res end 
    def map([h|t], f, res) do map(t, f, res ++ [f.(h)]) end 

    def reduce(list, f) do reduce((tl list), f, hd list) end
    def reduce([], _, res) do res end 
    def reduce([h|t], f, res) do reduce(t, f, f.(h, res)) end
end

vals = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
f1 = fn(n, acc) -> n+acc end 
f2 = fn(n, acc) -> n*acc end 
f3 = fn(n, acc) -> n-acc end 
f4 = fn(n, acc) -> acc-n end 

IO.puts MyEnum.reduce(vals, f1)
IO.puts MyEnum.reduce(vals, f2)
IO.puts MyEnum.reduce(vals, f3)
IO.puts MyEnum.reduce(vals, f4)
