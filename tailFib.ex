 # tailFib–accepts an integer argument, n, and returns the nth Fibonacci number using tail recursion
    def tailFib(n), do: tailFib(n, 0, 1)
    # Base Case 
    def tailFib(1, _acc1, acc2), do: acc2

    # Recursive Call 
    def tailFib(n, acc1, acc2) do 
      tailFib(n - 1, acc2, acc1 + acc2)
    end 
