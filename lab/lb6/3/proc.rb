def neibr(x, y)
	yield x, y
end

def sin_belong(x, y)
	if y == Math::sin(x**2)
		puts "Coordinate belongs to sin(x^2)"
	else
		puts "Coordinate don't belongs to sin(x^2)"
	end
end

def cos_belong(x, y)
	if y == Math::cos(x)
		puts "Coordinate belongs to cos(x)"
	else
		puts "Coordinate don't belongs to cos(x)"
	end
end

lm1 = lambda { |x, y| sin_belong(x, y); cos_belong(x, y) }
#neibr(x, y, &lm1)
