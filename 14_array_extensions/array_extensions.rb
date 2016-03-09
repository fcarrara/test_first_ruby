Array.class_eval do
	
	def sum
		sum = 0
		each { |num| sum += num}
		sum
	end

	def square
		map { |num| num * num }
	end

	def square!
		map! { |num| num * num }
	end
end