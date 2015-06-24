#偶数の項は3つずつ現れるので3項ずつとばして足していけば
#計算量が初項からオーソドックスにフィボナッチ数を求めていくのに比べて1/3になるかな。

sum = 0
ans = 0
n = 0
loop do
  n += 3
  fib = (((1 + Math.sqrt(5)) / 2)**n - (( 1 - Math.sqrt(5)) / 2)**n ) / Math.sqrt(5)
  
  if(4000000 < fib)
    break
  end 
  ans += fib
end
puts ans.to_i