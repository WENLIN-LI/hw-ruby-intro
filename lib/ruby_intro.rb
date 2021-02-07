# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  nums = []
  nums = arr if arr.length == 1
  nums = arr.max(2) if arr.length >= 2
  nums.inject(0, :+)
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    arr.each do |i|
      return true if arr.include?(n - i) && i * 2 != n
    end
    return false 
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false 
  elsif s =~ /^[^a-zA-Z]/
    return false
  elsif s =~ /^[aeiouAEIOU]/
    return false 
  else 
    return true
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  elsif s == "0" || s =~ /^[01]*00$/
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
