# http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2019
# https://projecteuler.net/problem=19
# 方針: 日付オブジェクトを作って曜日を確認
require 'date'
d = 1
count = 0
for y in 1901..2000
  for m in 1..12
    day = Date.new(y,m,d)
    if day.wday == 0
      count += 1
    end
  end
end

puts count
