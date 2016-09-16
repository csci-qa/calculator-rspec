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
			expect(calc.subtract(5,9)).to eq -4
			expect(calc.subtract(9,5)).to eq 4
		end
		it 'does not change when you subtract zero' do
			calc = Calculator.new
			expect(calc.subtract(12,0)).to eq 12
		end
	end
	describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(5,9)).to eq 45
			expect(calc.multiply(9,5)).to eq 45
		end
		it 'does change when you multiply by zero'
			calc = Calculator.new
			expect(calc.multiply(12,0)).to eq 0
		end
	end
	describe 'division' do
		it 'does care about the order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(45,9)).to eq 5
			expect(calc.divide(9,45)).to eq .2
		end
		it 'does change when you divide by zero' do
			calc = Calculator.new
			expect(calc.divide(12,0)).to eq undefined
		end
	end
end