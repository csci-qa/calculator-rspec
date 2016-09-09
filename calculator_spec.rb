puts "Coltons Calculator"
print ">> "
input = gets.chomp.split(" ")
num1 = input[0].include?(".") ? input[0].to_f : input[0].to_i 
num2 = input[2].include?(".") ? input[2].to_f : input[2].to_i
operator = input[1].to_sym

result = case operator
when :+ then num1 + num2
when :- then num1 - num2
when :* then num1 * num2
when :/ 
  if
    num1 == 0 or num2 == 0
	then puts "The calculator explodes."
	else num1 / num2
	end
when :% then num1 % num2
else nil
end
puts ">> #{result}"