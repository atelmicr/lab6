require './proc.rb'
def main
  (0...10).each do |i|
    puts "#{i + 1} coordinate"
    x = gets.to_f
    y = gets.to_f
    yield x, y
  end
end

# lm = lambda { |x, y| neibr x, y }
lm = ->(x, y) { neibr(x, y) }
main(&lm)
