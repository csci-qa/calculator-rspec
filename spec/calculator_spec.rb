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
		it 'does care about order numbers are subtracted' do
			calc = Calculator.new
			expect(calc.subtract(8, 6)).to eq 2
			expect(calc.subtract(6, 8)).to eq -2
		end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			expect(calc.subtract(10,0)).to eq 10
		end	
	end	
	
	describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiple(5, 4)).to eq 20
			expect(calc.multiple(4, 5)).to eq 20
		end
		it 'does change when you multiple by 0' do
			calc = Calculator.new
			expect(calc.multiple(5, 0)).to eq 0
		end
	end

	describe 'division' do
		it 'does care about order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(10, 5)).to eq 2
			expect(calc.divide(5.0, 10.0)).to eq 0.5
		end
		it 'does change when you divide by 0' do
			calc = Calculator.new
			expect(calc.divide(10, 0)).to eq 0
		end
	end	
end
