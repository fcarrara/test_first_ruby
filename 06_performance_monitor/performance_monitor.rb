require 'time'

def measure(n=0)
	start_time = Time.now
	if (n == 0)
 		yield  
 	else
 		n.times do |i|
 			yield(i)
 		end
 	end
 	(Time.now - start_time) / (n == 0 ? 1 : n)
end