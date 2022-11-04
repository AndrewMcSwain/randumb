#make a hash where kv [iter_size,order]:
#  example: [[10,100] => [...]
#iter_attr = (start, end, order_mag)

result = [[],[]]
iter_size = 10
order_mag = 12

iter_size.times { 
  result.push((1..10).yield_self { |r| r.member?(rand(15)) }) } 

t = []
f = []

result.each do |i|
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