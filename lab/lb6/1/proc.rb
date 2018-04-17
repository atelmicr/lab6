def func(epsilon)
  n = 0
  sum = 0.0
  loop do
    n += 1
    sum = fib(n).to_f / fib(n - 1)
    break if (sum - 1.6180339).abs < epsilon
  end
  puts n
  sum
end

def fib(n)
  if n < 3
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end
