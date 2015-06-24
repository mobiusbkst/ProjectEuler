# 問題: http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2010
# https://projecteuler.net/problem=10
# 考え方: 200万以下の素数を列挙して、それが配列の要素に入っているので配列の要素の和を求める
require 'prime'
puts Prime.each(2000000).inject(0){|sum,x| sum+x}