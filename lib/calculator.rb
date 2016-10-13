class Calculator
	def add(*nums)
		result = 0
		nums.each do |x|
			result += x
		end
		return result
	end

	def subtract(*nums)
		result = nums[0]
		nums[1..-1].each do |x|
			result -= x
		end
		return result
	end

	def multiply(*nums)
		result = 1
		nums.each do |x|
			result *= x
		end
		return result
	end

	def divide(*nums)
			result = nums[0]
			nums[1..-1].each do |x|
				result /= x
			end
			return result
		end
end
