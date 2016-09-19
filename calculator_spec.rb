puts "Coltons Calculator"
print ">> "
expect(calc.add(12, 4)).to eq 16
end
end
describe 'subtraction' do 
it 'order of the numbers matter' do
calc = Calculator new
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
it 'does care about the order of numbers being divided'
calc = Calculator.new
expect(calc.divide(10, 2)).to eq 5
expect(calc.divide(5, 10)).to eq .5
expect(calc.divide(0, 5)).to eq 0
end
it 'The calculator explodes when divided by 0' do
calc = Calculator.new
expect(calc.divide(9, 0)).to eq 'The calculator explodes'
end
end
end
