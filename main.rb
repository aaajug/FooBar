require 'benchmark'

def divisibility(number)
  by_five =  number % 5 == 0
  by_three = number % 3 == 0

  if by_five && by_three
    "FooBar"
  elsif by_five
    "Bar"
  elsif by_three
    "Foo"
  else
    number
  end
end

def FooBar(n)
  (1..n).each do |number|
    puts divisibility(number)
  end
end

def main
  print "Enter a number: "

  time = Benchmark.measure {
    FooBar(Integer(STDIN.gets()))
  }

  puts "\n[BENCHMARK] #{time}" if ARGV.include?("--benchmark")
end

main