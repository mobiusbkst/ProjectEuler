# 問題: http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2020
# https://projecteuler.net/problem=20
# 方針:100!求めてから各桁を足す
def fact(n)
  ans = 1
  n.downto(1) do |i|
    ans *= i
  end
  return ans
end

str = fact(100).to_s

ans = 0
for i in 0...str.size
  ans += str[i].to_i
end
puts ans