

#data structure mock-up                              #

# abstract into function the index_to_s 
# 
list_of_fn = [ x, y, z]
# actual: 
  result[:fn"#{index_to_s(list_of_fn)}"]
          [:v"#{index_to_s(result[fn..]
                                 [index_of_v]
                          )
               }"
        ]


    result = { fn1 => [ v1 => mdarr,
                        v2 => mdarr,
                        v3 => mdarr,
                        ...
               ],
               fn2 => [ v1 => mdarr,
                        v2 => mdarr,
                        v3 => mdarr,
                        ...
               ],
               fn3 => [ v1 => mdarr,
                        v2 => mdarr,
                        v3 => mdarr.
                        ...
               ],
               ...
              }


     #refactor mdarr, cogitar seperating derivative analysis from calculation result
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


        
