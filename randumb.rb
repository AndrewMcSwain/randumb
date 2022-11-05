#make a hash where kv [iter_size,order]:
#  example: [[10,100] => [...]
#iter_attr = (start, end, order_mag)

class StatCheck

  @result = [[],[]]
  iter_length = 10
  order_mag = 12

def gen(iter_lengt_arg)  
  iter_length_arg.times { 
    result[0]
      .push(1..10)
      .yield_self {rand(15)}
  }
end
    
def is_member_bool
  result[0].each do |i| 
    result[1].push(i.member?())
  end
end

  
t = []
f = []

result[1].each do |i|
  if i == true 
    t.push(i)
  else
    f.push(i)
  end
end

proportion = []
proportion.push(t.count, f.count)
proportion.sort
pct = proportion[0] / proportion[1]

puts "count is "
puts proportion

puts "pct is "
puts pct

puts "rand values"
puts result[0]
