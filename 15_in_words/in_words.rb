Fixnum.class_eval do

	def in_words

		if self < 0  # No negative numbers.
    	return 'Please enter a positive number'
  	end

  	if self == 0
    	return 'zero'
  	end

		teens = [ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ]

		tens = [ "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]

		teenagers = [ "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
		 						 "seventeen", "eighteen", "nineteen" ]
	
		result = ""

		left = self

		write = left / 1000000000000
	  left = left - write * 1000000000000

	  if write > 0
	  	number = write.in_words 
	  	result = result + number + ' trillion'

	  	if left > 0
	  		result = result + ' '
	  	end
	  end

	  write = left / 1000000000
	  left = left - write * 1000000000

	  if write > 0
	  	number = write.in_words 
	  	result = result + number + ' billion'

	  	if left > 0
	  		result = result + ' '
	  	end
	  end

	  write = left / 1000000
	  left = left - write * 1000000

	  if write > 0
	  	number = write.in_words 
	  	result = result + number + ' million'

	  	if left > 0
	  		result = result + ' '
	  	end
	  end

	  write = left / 1000
	  left = left - write * 1000

	  if write > 0
	  	number = write.in_words 
	  	result = result + number + ' thousand'

	  	if left > 0
	  		result = result + ' '
	  	end
	  end

	  write = left / 100        
	  left  = left - write * 100  

	  if write > 0
	    number  = write.in_words 
	    result = result + number + ' hundred'
	   
	    if left > 0
	      result = result + ' '
	    end
	  end

	  write = left / 10          
	  left  = left - write * 10  

	  if write > 0
	    if ((write == 1) and (left > 0))
	      result = result + teenagers[left-1]
	      left = 0
	    else
	      result = result + tens[write-1]
	    end

	    if left > 0
	      result = result + ' '
	    end
	  end

	  write = left 
	  left  = 0     

	  if write > 0
	    result = result + teens[write]   
	  end

	  result

	end
end