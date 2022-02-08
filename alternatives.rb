require 'benchmark'

# def divisibility(number)
#   if number % 15 == 0 
#     "Foobar"
#   elsif number % 5 == 0
#     "Bar"
#   elsif number % 3 == 0
#     "Foo"
#   else
#     number
#   end
# end

# def is_div_by_3(number) 
#   while number > 10 
#     sum = 0
#     number.to_s.split("").map { |i| sum = sum + i.to_i }
#     number = sum
#   end

#   [3, 6, 9].include? (sum)
# end

# def divisibility(number)
#   by_five =  [0, 5].include? (number-(10*(number/10)))
#   by_three = number % 3 == 0

#   if by_five && by_three
#     "Foobar"
#   elsif by_five
#     "Bar"
#   elsif by_three
#     "Foo"
#   else
#     number
#   end
# end

def FooBar(n)
  output = ["FooBar", "Foo", "Bar"]
  lookup_arr = [15, 3, 5]
  to_add_arr = [15, 3, 5]
  # increment_hash = { "Foo": 3, "Bar": 5, "FooBar": 15 }
  # to_add_hash = { "Foo": 3, "Bar": 5, "FooBar": 15 }

  (1..n).each do |number|
     if lookup_arr.include?(number)
      index = lookup_arr.index(number)

      puts output[index]
      lookup_arr[index] = lookup_arr[index] + to_add_arr[index]
     else 
      puts number
     end

    # lookup_hash.keys.map { |k| lookup_hash[k] = lookup_hash[k] + to_add[k] }
    # lookup_arr = (0..2).map { |i| lookup_arr[i] + to_add_arr[i] }
  end
end

# def divisibility(number)
#   by_five =  number % 5 == 0
#   by_three = number % 3 == 0

#   if by_five && by_three
#     "Foobar"
#   elsif by_five
#     "Bar"
#   elsif by_three
#     "Foo"
#   else
#     number
#   end
# end


# def FooBar(n)
#   (1..n).each do |number|
#     puts divisibility(number)
#   end
# end

def main
  print "Enter a number: "

  time = Benchmark.measure {
    FooBar(Integer(STDIN.gets()))
  }

  puts "\n[BENCHMARK] #{time}" if ARGV.include?("--benchmark")
end

main
