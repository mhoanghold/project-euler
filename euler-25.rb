starting_terms = [1,1]
def fibonacci(terms)
  next_term = terms[-1] + terms[-2]
  terms << next_term

  if next_term.to_s.length < 1000
    fibonacci(terms)
  else
    terms
  end
end


puts fibonacci(starting_terms).inspect
puts fibonacci(starting_terms).length