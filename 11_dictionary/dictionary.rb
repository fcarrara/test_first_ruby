class Dictionary

	def initialize
		@entries = {}
		@keywords = ""
	end

	def entries
		@entries
	end

	def keywords
		@entries.keys.sort
	end

	def add(entry)
		entry.is_a?(Hash) ? @entries.merge!(entry) : @entries[entry] = nil
	end

	def include?(key)
		@entries.include?(key)
	end
	
	def find(key)
		if @entries.empty?
			{}
		else
			result = @entries.select { |k| k.start_with?(key) }
		end
	end

	def printable
		keywords.map { |key| %Q{[#{key}] "#{@entries[key]}"} }.join("\n")
	end
	
end