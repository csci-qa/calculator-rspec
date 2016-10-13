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
		it 'does care about the order numbers are added' do
			calc = Calculator.new
			expect(calc.subtract(5, 9)).to eq -4
			expect(calc.subtract(9, 5)).to eq  4
		end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			expect(calc.subtract(5, 0)).to eq 5
		end
		it 'returns 0 when you subtract a number from itself' do
			calc = Calculator.new
			expect(calc.subtract(5, 5)).to eq 0
		end
	end

	describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(5, 9)).to eq 45
			expect(calc.multiply(9, 5)).to eq 45
    end
    it 'returns 0 when you multiply by 0' do
			calc = Calculator.new
			expect(calc.multiply(5, 0)).to eq 0
  	end
  end

  describe 'division' do
    it 'does care about the order the numbers are divided' do
    	calc = Calculator.new
    	expect(calc.divide(25, 5)).to eq 5
    	expect(calc.divide(5.0, 25)).to eq 0.2
  	end
  	it 'returns 0 when 0 is divided by another number' do
    	calc = Calculator.new
    	expect(calc.divide(0,5)).to eq 0
    end
    it 'throws an exception when a number is divided by 0' do
    	calc = Calculator.new
      expect{calc.divide(5,0)}.to raise_exception(ZeroDivisionError)
    end
  end
 end



