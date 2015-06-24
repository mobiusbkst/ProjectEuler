# 問題: http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2012
# https://projecteuler.net/problem=12

require 'prime'
# 素因数分解した後、累乗の個数をもとに約数の個数が求められるらしい
# 参考： http://manapedia.jp/text/986
def getDivisorNum(n)
  list = Prime.prime_division(n)
  divisorNumber = 1
  for i in list
    divisorNumber *= i[1] + 1
  end
  return divisorNumber
end

n = 1
sum = 0
size = 0

while size < 500
  sum += n
  size = getDivisorNum(sum)
  n += 1
end

puts sum

