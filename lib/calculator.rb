class Calculator
	def add(num1, num2)
		num1 + num2
	end		
	def subtract(num1, num2)
		num1 - num2
	end
	def multiply(num1, num2)
		num1 * num2
	end
	#try with catching error
	def divide(num1, num2)
		if num2 == 0
			puts "You can't divide by zero."
		else
			num1/num2
		end
	end
	#try without catching error
# 	def divide(num1, num2)
# 		num1/num2
# 	end
end