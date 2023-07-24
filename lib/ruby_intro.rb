# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # if array is empty return 0
  return 0 if arr.empty?
  # if not, return result of sum
  arr.sum
end

def max_2_sum arr
  return 0 if arr.empty?
  # if have one element return that one
  return arr[0] if arr.length == 1
  # if not, return sum of two largest elements
  arr.max(2).sum
end

def sum_to_n? arr, n
  # if array is empty return false
  return false if arr.empty?
  # if not, return true if any two elements sum to n
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # return hello with name
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # return false if s.empty?
  if s.empty?
    return false
  elsif s =~ /^[^aeiou\W]/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
   # return true if multiple of 4
   if s =~ /^[10]*00$/ || s == '0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError, "ISBN number is the empty string or if the price is less than or equal to zero!"
    end

    @isbn = isbn
    @price = price
  end

  # ex, 33.8 => $33.80
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
