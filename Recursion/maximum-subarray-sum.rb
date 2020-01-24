def dnc_problem(list)
  # base cases; very different for every problem

  # divide
  left = left_half(list)
  right = right_half(list)

  # conquer (recurse)
  left_result = dnc_problem(left)
  right_result = dnc_problem(right)

  # combine; very different for every problem
  return combine(left_result, right_result)
end