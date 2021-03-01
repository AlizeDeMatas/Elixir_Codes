# Tail Recursion
# sumEven–Return the sum of all even integers in an input list.
    # Helper Function 
    def sumEven(list), do: sumEven(list,0)
    # Base Case
    def sumEven([], sum), do: sum

    # Recursive Call
    def sumEven([h | t], sum) do
        element_good = is_integer(h) && rem(h, 2) == 0
        if element_good do 
            sumEven(t, sum+h)
        else 
            sumEven(t, sum)
        end 
    end 
