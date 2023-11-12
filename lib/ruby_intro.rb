# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each{|x| sum+=x}
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length == 0
    return sum
  end
  sorted_array = arr.sort
  sum += sorted_array[-1]
  if arr.length == 1
    return sum
  end
  sum += sorted_array[-2]
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0...arr.length).each{|x| 
    (x+1...arr.length).each{|y| 
      if (arr[x]+arr[y] == n)
          return true
      end}}
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[^AEIOU\W]/i # \W表示所有非字母字符
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s =~ /^[01]*00$|^0$/ # 必须有$否则能匹配1000200前部分，导致被匹配 0也得需要被匹配
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn == '' || price <= 0
      raise ArgumentError, "InVaild Error" # 记住语法
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
