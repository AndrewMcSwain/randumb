#make a hash where kv [iter_size,order]:
#  example: [[10,100] => [...]
#iter_attr = (start, end, order_mag)

result = [[],[]]
iter_size = 10
order_mag = 12
rand_val

gen = iter_size.times { 

  result[0].push(1..10).yield_self {rand_val = rand(15)}
}
    
#is_member_bool = result[0].each {
#  |i| result[1].push(i.member?(rand_val))
#}

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
