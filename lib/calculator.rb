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
	def divide(num1, num2)
		if num2 == 0
			nil
		else
			num1 / num2
		end	
	end
end