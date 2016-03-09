def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(nums)
	sum = 0
	nums.each do |num|
		sum += num
	end
	sum
	# nums.inject(0) { |sum, number| sum + number } using *nums as argument
end

def multiply(nums)
	total = 1
	nums.each do |num|
		total *= num
	end
	total
end

def power(a,b)
	a**b
end

# Non-recursive version
def factorial(n)
	if (n == 0)
		return 1
	else
		return (1..n).inject { |product, n| product * n }
	end
end

# Recursive version
def factorial(n)
	if (n == 0)
		return 1
	else
		n * factorial(n-1)
	end
end