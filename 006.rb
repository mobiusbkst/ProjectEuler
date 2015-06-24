# 問題:http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%206
# https://projecteuler.net/problem=6

#1～100までの2乗の和(n*(n+1)*(2n+1)/6)
a = 100 * (100 + 1) * (2 * 100 + 1) / 6

#1～100までの和の二乗(n*(n+1)/2)^2
b = (100 * (100 + 1) / 2 )**2

puts b - a