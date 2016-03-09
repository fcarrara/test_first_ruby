def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, times=2)
	((phrase + " ") * times).strip #trim
end

def start_of_word(word, letters)
	word[0..letters-1]
end

def first_word(phrase)
	phrase.split()[0]
end

def titleize(phrase)
	#here we add all the little words we don't want to capitalize
	little_words = ["a", "an", "and", "over", "the"] 
	
	phrase = phrase.gsub(/\w+/) { |match| little_words.include?(match) ? match : match.capitalize}
	phrase[0] = phrase[0].capitalize
	phrase
end



