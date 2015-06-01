sum = 0
starting_terms = [1,2]
def fibonacci(terms)
  next_term = terms[-1] + terms[-2]
  terms << next_term

  if next_term <= 4000000
    fibonacci(terms)
  else
    terms
  end
end

fibonacci(starting_terms).each do |n|
  if n % 2 == 0
    sum += n
  end
end
puts sum

