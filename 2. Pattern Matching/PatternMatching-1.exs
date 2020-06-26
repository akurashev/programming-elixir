a = [1, 2, 3] # OK

a = 4 # OK

4 = a # OK

[a, b] = [1, 2, 3] # ** (MatchError) no match of right hand side value: [1, 2, 3]

a = [[1, 2, 3]] # OK

[a] = [[1, 2, 3]] # OK

[[a]] = [[1, 2, 3]] # ** (MatchError) no match of right hand side value: [[1, 2, 3]]
