def translate(phrase)
	final = ""
	phrase.split.each do |word|
		if /[aeiou]/.match(word[0])
			word = word.concat("ay")
		else
			while /[^aeiou]/.match(word[0])
				if word[0] == 'q' && word[1] == 'u'
					word = word[2..word.length-1].concat(word[0] + word[1])
				else
					word = word[1..word.length-1].concat(word[0])
				end
			end
			word = word.concat("ay")
		end
		final.concat(word + " ")
	end
	final.strip
end