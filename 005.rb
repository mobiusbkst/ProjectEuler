# 問題 http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%205
# https://projecteuler.net/problem=5

#方針
#1～20までの最小公倍数を求めていく
#まず1と2の最小公倍数を求めて次に2(1と2の最小公倍数)と3の最小公倍数を求めて
#6（1と2の最小公倍数と3の最小公倍数)と4の最小公倍数を求めて・・・を繰り返す

require 'rational'; puts (1..20).inject(1){|num, i| i.lcm(num)}


