class Timer

	attr_accessor :seconds

	def initialize (seconds = 0)
		@seconds = seconds
	end

	def time_string
		@time_string = convertTime
	end

	def convertTime
		hours = (@seconds / 3600).round
		minutes = (@seconds % 3600) / 60
		seconds = (@seconds % 60).round
		hours = hours < 10 ? "0#{hours}" : hours
		minutes = minutes < 10 ? "0#{minutes}" : minutes
		seconds = seconds < 10 ? "0#{seconds}" : seconds
		"#{hours}:#{minutes}:#{seconds}"
	end
end
