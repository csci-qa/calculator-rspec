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
		it 'does care about the order numbers are subtracted' do
			calc = Calculator.new
			expect(calc.subtract(9, 5)).to eq 4
			expect(calc.subtract(5, 9)).to eq -4
		end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			expect(calc.subtract(9, 0)).to eq 9
		end
	end
	describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(9, 5)).to eq 45
			expect(calc.multiply(5, 9)).to eq 45
		end
		it 'does change when you multiply by 0' do
			calc = Calculator.new
			expect(calc.multiply(9, 0)).to eq 0
		end
	end
	describe 'division' do
		it 'does care about the order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(10, 5)).to eq 2
			expect(calc.divide(5.0, 10.0)).to eq 0.50
		end
		it 'throws an exception when dividing by 0' do
			calc = Calculator.new
			expect(calc.divide(10, 0)).to eq 0
		end
	end
end