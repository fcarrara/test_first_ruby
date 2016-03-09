class Book

	attr_accessor :title

	def title
		little_words = ["a", "an", "and", "over", "the", "in", "of"] 
		@title = @title.gsub(/\w+/) { |match| little_words.include?(match) ? match : match.capitalize}
		@title[0] = @title[0].capitalize
		@title
		# @title.split.map(&:capitalize).join(" ") a different way to capitalize a string with many words
	end
end