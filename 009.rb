# 問題: https://projecteuler.net/problem=9
# http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209
#考え方
#総当たりだがa<b<cの判定を行って余計な計算をしないようにしている
for a in 1..400
  for b in (a+1)..400
    c = 1000 - a - b
    if(c < b)
      break
    end
    if a**2 + b**2 == c**2 && a+b+c == 1000
      puts  "#{a} #{b} #{c}"
      puts a*b*c;
      break
    end
  end
end