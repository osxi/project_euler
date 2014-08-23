# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

palindromes = []

def is_palindrome?(value)
  value.to_s == value.to_s.reverse
end

(100..999).each do |a|
  (100..999).each do |b|
    prod = a * b
    palindromes << prod if is_palindrome?(prod)
  end
end

puts palindromes.max
