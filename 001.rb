#Problem 1 Multiples of 3 and 5
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
# https://projecteuler.net/problem=1

# Problem 1 「3と5の倍数」
#10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
#同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.
# http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201

def sum(n)
  #包除原理により3か5の倍数の和を求める
  return P(3)+ P(5) - P(3*5)
end

#aの倍数の和を求める
def P(a)
  # 等差数列の和でaの倍数の和を求める
  n = 999 / a
  return n * (2 * a + (n - 1 )* a ) / 2
end

puts sum
