# 問題：http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2015
# https://projecteuler.net/problem=14
# 考え方：総当たり
def getMax(a, b)
  return (a <=> b) == -1 ? b : a
end

max = 0

num = 0
for i in 1...1000000
  count = 0
  n = i
  loop do

    if(n == 1)
      max = getMax(count, max)
      if count == max
        num = i
      end
      break
    else
      #コラッツ数を計算
      n.even? ? n = n / 2 : n = 3 * n + 1
      count += 1
    end
  end
end

puts num

