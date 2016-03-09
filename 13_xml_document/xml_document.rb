class XmlDocument

	def initialize(indent = false)
		@indent = indent
		@indent_level = 0
	end

	
	def indent(str)
		str << "  " * @indent_level
	end

	def method_missing(method_name, args={}, &block)
		
		xml = ""
		indent(xml) if @indent
		# puts "indent level = #{@indent_level}"
		puts "indent level begining = #{@indent_level}"

		if !block.nil?
			if @indent
				xml << "<#{method_name}>\n"
				@indent_level += 1
				puts "indent level before yield = #{@indent_level}"
				xml << yield
				@indent_level -= 1
				xml << indent("</#{method_name}>\n")
				
				puts "result block not nil = #{xml}"
				puts "indent level end block nil= #{@indent_level}"
			else
				xml << "<#{method_name}>#{yield}</#{method_name}>"
				puts "resut block nil = #{xml}"
			end
		elsif !args.empty?
			args.each do |key,tag|
				if @indent
					xml << "<#{method_name} #{key}='#{tag}'/>\n"
					puts "result args not empty widh indent= #{xml}"
				else
					xml << "<#{method_name} #{key}='#{tag}'/>"
					puts "result args not empty without indent = #{xml}"
				end
			end
		else 
			xml << "<#{method_name}/>"
			puts "result only method name = #{xml}"
		end
		xml
	end



	
end