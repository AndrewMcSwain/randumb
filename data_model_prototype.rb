

#data structure mock-up                              #

# abstract into function the index_to_s 
#
list_of_fn = [ 1, 2, 3]

class DataModel
  def arr_i_to_hash_k(arr, hash=nil)
    if defined?(hash) == false
      hash = Hash.new
    else
      arr.each_with_index do |element, index|
        hash.store(index, element)
      end
    end
    return hash
  end
end


  aresult = DataModel.new  
  aresult.arr_i_to_hash_k(list_of_fn) 
  puts aresult
# actual: 
#  result[":fn#{fn_list[i]}"]
        #make this correct and comprehisible  
#          [:v"#{index_to_s(result[fn..]
#                                 [index_of_v]
#                          )
#               }"
#        ]
#
#
#    result = { fn1 => [ v1 => mdarr,
#                        v2 => mdarr,
#                       v3 => mdarr,
#                        ...
#               ],
#               fn2 => [ v1 => mdarr,
#                        v2 => mdarr,
#                        v3 => mdarr,
#                        ...
#               ],
#               fn3 => [ v1 => mdarr,
#                        v2 => mdarr,
#                        v3 => mdarr.
#                        ...
#               ],
#               ...
#              }


     #refactor mdarr, cogitate seperating derivative analysis from calculation result
    # represent in this mockup that algo will be run many times with different inputs
        
    #mdarr
    #  [ [ [1,5,6], [...] ]                               #   ,[ [true,true,true], [...] ]
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
    #      for count_bools hashmap:                       #      result[3][0][index.to_s]["c"]
    #


        
