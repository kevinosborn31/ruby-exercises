class SimpleSums

		def initialize( number )
			@number = number 
		end

		def number
			@number 
		end

		def s1
			@number % 2
		end

		def s2

			sum_s2 = 0

			@number.times do |num|
				sum_s2 += num + 1
			end
			sum_s2
			
		end

end

sum = SimpleSums.new(4)

p.sum.number