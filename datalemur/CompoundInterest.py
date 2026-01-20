def compound_interest(principal, rate, contribution, years):
    for i in range (0,years):
      principal *= (rate / 100.0 + 1.0)
      principal += contribution
    return round(principal,2)
