#Problem 3 「最大の素因数」
#13195 の素因数は 5, 7, 13, 29 である.
#600851475143 の素因数のうち最大のものを求めよ.
#Problem 3 Largest prime factor
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
require 'prime'
puts 600851475143.prime_division.max[0]
