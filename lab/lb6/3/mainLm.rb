require './proc.rb'

def neibr(x, y)
	yield x, y
end
lm1 = lambda { |x, y| sin_belong(x, y); cos_belong(x, y) }
(0...10).each do |i|    puts "#{i+1} coordinate"
  x = gets.to_f
  y = gets.to_f
  neibr(x, y, &lm1)
end

lm1 = lambda { |x, y| sin_belong(x, y); cos_belong(x, y) }
