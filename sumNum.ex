 # sumNum–Returns the sum of all numeric values in the list using tail recursion.
    # Base Case
    def sumNum([]) do
      0
    end 
    # Recursive Call
    def sumNum([h | t]) do 
      h + sumNum(t)
    end 
