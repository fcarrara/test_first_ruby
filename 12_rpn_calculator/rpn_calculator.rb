class RPNCalculator

	def initialize
		@calculator = []
	end

	def pop
		@calculator.pop
	end

	def push(number)
		@calculator.push(number)
	end

	def plus
		if @calculator.size > 1 
			@calculator.push("+") 
		else 
			raise Exception.new "calculator is empty"
		end
	end

	def minus
		if @calculator.size > 1 
			@calculator.push("-") 
		else 
			raise Exception.new "calculator is empty"
		end
	end

	def divide
		if @calculator.size > 1 
			@calculator.push("/") 
		else 
			raise Exception.new "calculator is empty"
		end
	end

	def times
		if @calculator.size > 1 
			@calculator.push("*") 
		else 
			raise Exception.new "calculator is empty"
		end
	end

	def is_operator?(str)
		["+","-","/","*"].include?(str)
	end

	def calculate(operator,a,b)
		result = 0.0
		if operator.to_s == "+"
			result = b + a
		elsif operator.to_s == "-"
			result = b - a
		elsif operator.to_s == "*"
			result = b * a
		else
			result = b / a	
		end
		
		result
		
	end

	def evaluate(str)
		@calculator = []
		list = str.split(" ")
		list.each do |e|
			if e == "+"
				plus
			elsif e == "-"
				minus
			elsif e == "*"
				times
			elsif e == "/"
				divide
			else
				push(e)
			end
		end

		value

	end

	def value
		temp = ""
		aux = []
			
		while @calculator.size > 2

			temp = @calculator.pop

			if is_operator?(temp)
				a = @calculator.pop
				if is_operator?(a)
					aux.push(temp)
					@calculator.push(a)
				else
					b = @calculator.pop
					if is_operator?(b)
						aux.push(temp)
						aux.push(a)
						@calculator.push(b)
					else
						@calculator.push(calculate(temp,a.to_f,b.to_f))
					end
				end
			else
				aux.push(temp)
			end

			if @calculator.size <= 2
				@calculator.push(*aux.reverse)
				aux = []
			end
		end

		@calculator.last
		
	end

	def tokens(str)
		str.split(" ").map { |e| is_operator?(e) ? e.to_sym : e.to_i }
	end

end
