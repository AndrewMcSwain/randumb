
def gen
  result = [[],[],[]]
  range = 1..10
  iter_length = 10

  # attr_accessor :result, :range, :iter_length 

  # def run_generator
    iter_length.times {
      result[0]
        .push(
          range.yield_self {rand(15)}
        )}
  # end

  # def check_criteria_member?
    # refactor: check_criteria(criteria)
    #
    result[0].each do |i|  
        result[1].push((range).member?(i))
    end
  # end
  
    # def count_bools
    # end
    #
    #
    # data structure mock-up
    #
    #  [ [ [1,5,6], [...] ]  
    #   ,[ [true,true,true], [...] ]
    #   ,[ { index.to_s => 
    #           "t" => [],  
    #           "f" => [], 
    #           "c" => []
    #       }
    #      ,{...} ]
    #      ]
    #
  #      syntax : result[col][row]
    #      
    #      for count_bools hashmap:
    #      result[3][0][index.to_s]["c"]
    #
    #
    #      def display_item
    #        result[1..3][index]
    #          how to grab the hash in 3rd col?
    #            if col is count_hash then get "c" 
    #      end
    #      
    #

  # self.run_generator
  # self.check_criteria_member?

  return result

end

col = []
10.times{col.push(gen)}
puts col
