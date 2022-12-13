#make a hash where kv [iter_size,order]:
#  example: [[10,100] => [...]
#iter_attr = (start, end, order_mag)


#problems
# with method chaining



class StatCheck

  attr_accessor
    :range
    :result
    :repeat_calculation
    :iter_length

  def initialize 
    @result = result
    @iter_length = iter_length
    @range = range
    @order_magnitude = order_magnitude
    @repeat_calculation = repeat_calculation
    @proportion = proportion
  end

  def define_values
    result = [[],[]]
    iter_length = 10
    range = (1..10) 
    order_mag = 12
    repeat_calculation = 10
  end

  def gen 
    iter_length.times { 
      result[0]
      .push(
        (range).yield_self {rand(15)}
        )
    }
  end

  
  def is_member_bool
    result[0].each do |i| 
      result[1].push((range).member?(i))
    end
    puts result[1]
  end

  def organize_bool_result
    
    bool_result = Hash[ "t",[],"f",[] ]

    result[1].each do |i|
      if i == true 
        bool_result["t"] << i
      else
        bool_result["f"] << i
      end
    end

    def display_result
      proportion = []
      proportion.push(bool_result["t"].count, bool_result["f"].count)

      def pct 
          total = (
            proportion[0] + proportion[1]
          )
          puts " pct true is #{proportion[0] / total * 100}"
      end

      puts "count is "
      puts proportion

      puts "pct is "
      puts pct

      puts "rand values"
      puts result[0]
    end
  end
end

te = StatCheck.new
te.gen
te.is_member_bool
te.organize_bool_result
te.display_result

