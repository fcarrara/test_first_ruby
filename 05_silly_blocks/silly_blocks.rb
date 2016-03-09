def reverser
	yield.split.map { |word| word.reverse }.join(" ")
end

def adder(count=1)
	yield + count
end

def repeater(n=1)
	n.times { yield }
end
