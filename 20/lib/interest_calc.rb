module InterestCalc
	class Interest
		def initialize(args, &block)
			if block_given?
				p block.call(args)
			else
				puts "no block passed"
			end
		end
		def simple_calc

		end

		def compound_calc

		end

		def diff_in_calc
			
		end
	end

end