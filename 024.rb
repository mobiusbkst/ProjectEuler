a = -1..8
list = a.collect{|i| i += 1}
ans = list.permutation(10).sort[999999]

print ans.to_s