require 'pry'

class Robot

	def initialize
		@name = generate_name
		@instructions_counter = 0
		@create_at = Time.now.to_i
		@reset_at = Time.now.to_i
	end

	def generate_name

		# Get letters from A - Z, put them into an array,
		# get 2 of them, and join together
		letters = ("A".."Z").to_a.sample(2).join
		numbers = ("000".."999").to_a.sample
		letters + numbers

	end

	def name
		@instructions_counter +=1
		@name
	end

	def instructions_counter 
		@instructions_counter
	end

	def reset
		@instructions_counter +=1
		@name = generate_name
		@reset_at = Time.now.to_i
	end

	def timers 
		@time_since_creation = Time.now.to_i - @create_at
		@time_since_last_reboot = Time.now.to_i - @reset_at
		"#{@time_since_last_reboot} seconds since last boot, 
		#{@time_since_creation} seconds since creation"
	end

end

p robot1 = Robot.new
p robot1.name
p robot1.reset 
p robot2.name