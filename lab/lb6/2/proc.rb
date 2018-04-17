def func(epsilon)
  list = Enumerator.new do |yielder|
    sum = 0.0
    fib = 2
    prev1 = 1
    prev2 = 1
    n = 0
    loop do
      yielder.yield sum, prev1, prev2, n, fib
      prev2 = prev1
      prev1 = fib
      fib = prev1 + prev2
      sum = fib.to_f / prev1
      n += 1
    end
  end

  arr = list.take_while { |sum| (1.618033989 - sum).abs > epsilon }
  puts "N = #{arr[-1][3]}"

  (arr[-1][1] + arr[-1][4]).to_f / arr[-1][4]
end
