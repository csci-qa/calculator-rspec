require 'calculator'
describe 'addition' do
	it 'does not matter the order numbers are added' do
	calc = Calculator.new
	expect(calc.add(3,4)).to eq 7
	expect(calc.add(5, 4)).to eq 9
	expect(calc.add(2, 3)).to eq 5
end
	it 'does not change when you add 0' do
	calc = Calculator.new
	expect(calc.add(5, 0)).to eq 5
end
	describe 'subtraction' do 
	it 'order of the numbers matter' do
	calc = Calculator.new
	expect(calc.subtract(3, 9)).to eq -6
	expect(calc.subtract(9, 3)).to eq 6
	expect(calc.subtract(3, 5)).to eq -2
end
	it 'does not change when you subtract 0' do
	calc = Calculator.new
	expect(calc.subtract(12, 0)).to eq 12
end
end
	describe 'multiplication' do
	it 'does not matter the order numbers are multiplied' do
	calc = Calculator.new
	expect(calc.multiply(5, 9)).to eq 45
	expect(calc.multiply(9, 5)).to eq 45
end
	it 'does change when multiplied by 0' do
	calc = Calculator.new
	expect(calc.multiply(12, 0)).to eq 0
end
end
	describe 'division' do
	it 'does care about the order of numbers being divided' do
	calc = Calculator.new
	expect(calc.divide(10, 2)).to eq 5
	expect(calc.divide(20, 10)).to eq 2
	expect(calc.divide(0, 5)).to eq 0
end
	it 'The calculator explodes when divided by 0' do
	calc = Calculator.new
	expect(calc.divide(9, 0)).to eq 'The calculator explodes'
end
end
end
