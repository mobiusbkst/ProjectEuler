# 問題：http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%204
# https://projecteuler.net/problem=4

# 考え方
# 総当たりだが最大値が900代同士の積であると推定
# 回文数の判定は元の数を反転させて同じだったら回文数

maxArray = Array.new;
for i in 900..999
  # forの最初をiから始めると計算の重複はなくなる。
  for j in i..999
    ans = i*j
    rev = ans.to_s.reverse
    if(ans.to_s == rev)
    puts "#{i} #{j} #{ans}"
      maxArray.push(ans)
    end
  end
end
puts maxArray.max