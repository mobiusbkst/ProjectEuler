# 問題：http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2016
# https://projecteuler.net/problem=16
# 考え方:2^1000を求めｔから各桁を足す

s = (2 ** 1000).to_s
sum = 0
for i in 0...s.size
  sum += s[i].to_i
end
puts sum