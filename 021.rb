# 問題：http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2021
# https://projecteuler.net/problem=21
# 考え方: 総当たり
N = 10000

sumOfDivisor = Array.new(N,0)
# 約数を求める
for i in 2...N
  for j in 1..Math.sqrt(i)
    if i % j == 0
      sumOfDivisor[i] += j
      if j != 1 && j != Math.sqrt(N)
        sumOfDivisor[i] += i / j
      end
    end
  end
end

ans = 0
# 友愛数の和を求める
for i in 2...N
  if i != sumOfDivisor[i] && i == sumOfDivisor[sumOfDivisor[i]]
    ans += sumOfDivisor[i] + sumOfDivisor[sumOfDivisor[i]]
    # 重複して足さないようにする
    sumOfDivisor[sumOfDivisor[i]] = -1
  end
end
puts ans
