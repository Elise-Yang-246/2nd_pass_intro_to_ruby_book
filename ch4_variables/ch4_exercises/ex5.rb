=begin
`3` is printed to the screen.
No, an error is not issued. This is because:
  On line 1, local variable `x` is initialized to the Integer object `0`. 
  On line 2, the `times` method is called on the Integer object `3` and passed
  the block on lines 2-4 as an argument. For each iteration of the block,
  local variable `x` is reassigned to the ((value of `x`) plus `1`). This causes
  `x` to be reassigned to the Integer object `1`, then `2`, then `3`.
  This is possible because a block creates a new inner scope that can still
  access variables initialized in an outer scope.
  On line 5, the `puts` method is invoked and passed the value of `x` as
  an argument, which prints `3` to the screen.
=end

# -----------------------------------

=begin
An error is issued. (NameError: undefined local variable or method `x` 
on line 6). This is because:
  On line 1, local variable `y` is initialized to the Integer object `0`.
  On line 2, the `times` method is invoked on the Integer object `3` and
  passed the block on lines 2-5 as an argument. On the first iteration of the 
  block, local variable `y` is reassigned to the ((value of `y`) plus `1`), and 
  local block variable `x`is initialized to the value of `y`, which is the 
  Integer object `1`. The block is iterated over a total of 3 times. On line 6, 
  the `puts` method is invoked and passed the value of `x` as an argument. 
  However, `x` is no longer accessible in the outer scope, since it was 
  initialized inside the block. 
=end
