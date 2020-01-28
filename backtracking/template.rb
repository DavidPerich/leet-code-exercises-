# temp     -> current path of exploration
# results  -> successful finds

def backtrack(list, temp, results)

  if # <<dead end condition>>
    return
  end

  if # <<success condition>>  # also can return if terminal condition (leaf node)
    results << temp.dup
  end


  list.each do |n|
    next if # <<don't want to take; redundant to dead-end condition above (only need 1)>>

    temp << n                        # take
    backtrack(list, temp, results)   # explore
    temp.pop                         # clean up

  end
end

def some_problem(list)
  results = []
  backtrack(list, [], results)
  results
end

p some_problem([1,2,3])