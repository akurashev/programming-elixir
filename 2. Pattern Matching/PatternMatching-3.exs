a = 2

[a, b, a] = [1, 2, 3] # ** (MatchError) no match of right hand side value: [1, 2, 3]

[a, b, a] = [1, 1, 2]# ** (MatchError) no match of right hand side value: [1, 1, 2]

a = 1 # OK

^a = 2 # ** (MatchError) no match of right hand side value: 2

^a = 1 # OK

^a = 2 - a # OK
