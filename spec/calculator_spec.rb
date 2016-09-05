require 'rspec'
require 'calculator'

describe Calculator do
	describe 'addition' do
		it 'does not care about the order numbers are added' do
			calc = Calculator.new
			expect(calc.add(5, 9)).to eq 14
			expect(calc.add(9, 5)).to eq 14
		end
		it 'does not change when you add 0' do
			calc = Calculator.new
			expect(calc.add(12, 0)).to eq 12
		end
	end
	describe 'subtraction' do
		it 'cares about the order numbers are subtracted' do
			calc = Calculator.new
			expect(calc.subtract(5, 9)).to eq -4
			expect(calc.subtract(9, 5)).to eq 4
		end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			expect(calc.subtract(12, 0)).to eq 12
		end
	end
	describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(5, 9)).to eq 45
			expect(calc.multiply(9, 5)).to eq 45
		end
		it 'should be 0 when you multiply by 0' do
			calc = Calculator.new
			expect(calc.multiply(12, 0)).to eq 0
		end
	end
	describe 'division' do
		it 'cares about the order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(5.to_f, 10.to_f)).to eq 0.5
			expect(calc.divide(10, 5)).to eq 2
		end
		
		it 'gives an error when divided by 0' do
			calc = Calculator.new
			begin
			  	 # Try to divide by zero.
				i = calc.divide(12,0)
			rescue ZeroDivisionError
			    # Handle the error.
			    puts "Programming Error: Division By Zero"
			end

			# Display final value.
		puts i

		end
	end

end