
@result = Array.new
@iter_length = 10
@range = 1..10

class Stat(*args)
  def gen                                                 @iter_length.times {                                    @result[0]                                            .push(
          (@range).yield_self {rand(15)}
          )
      }
  end
                                                                                                              def is_member_bool                                      @result[0].each do |i|                                  @result[1].push((@range).member?(i))
    end                                           
  end
end

sta = Stat.new(@result, @iter_length, @range)
