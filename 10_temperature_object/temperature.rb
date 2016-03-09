class Temperature

	attr_accessor :f, :c

	def initialize(options= {})
		@f = options[:f]
		@c = options[:c]
	end

	def self.from_fahrenheit(temperature)
		Temperature.new(:f => temperature)
	end

	def self.from_celsius(temperature)
		Temperature.new(:c => temperature)
	end

	def in_fahrenheit
		if @c
			(@c * 9.0 / 5.0) + 32.0
		else
			@f
		end
	end

	def in_celsius
		if @f
			(@f - 32.0) * 5.0 / 9.0
		else
			@c
		end
	end

end