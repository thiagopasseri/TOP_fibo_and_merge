require 'benchmark'

def i_fibo(number)
  arr = []
  i = 1
  fibo = 0
  fib_ = 1
  fib__ = 0
  while (i <= number)
    fibo = fib_ + fib__
    arr << fibo
    fib__ = fib_
    fib_ = fibo
    i += 1
  end
  arr
end


def r_fibo(number, memo = {})
  if number <= 0
    [0]
  elsif number == 1
    [0,1]
  elsif memo[number]
    memo[number]
  else
    memo[number] = r_fibo(number - 1, memo) << (r_fibo(number - 1, memo)[-1] + r_fibo(number - 2, memo)[-1])
  end
end


tempo = Benchmark.measure {i_fibo(100)}
puts "i_fibo: #{tempo.real} segundos"

tempo = Benchmark.measure {r_fibo(100)}
puts "r_fibo: #{tempo.real} segundos"



# inicio = Time.now
# i_fibo(100)
# fim = Time.now

# puts "Tempo de execução i_fibo: #{fim - inicio} segundos"

# inicio = Time.now
# r_fibo(100)
# fim = Time.now

# puts "Tempo de execução r_fibo: #{fim - inicio} segundos"

