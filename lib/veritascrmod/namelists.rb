{:time=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:filewrite_freq=>
      {:should_include=>"true",
       :description=>
        "The larger this number, the more often output data is written to disk.",
       :help=>
        "The larger this number, the more often output data is written to disk.",
       :code_name=>:filewrite_freq,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer}}},
 :particles=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:np=>
      {:should_include=>"true",
       :description=>
        "Number of velocity points for the given species.",
       :help=>
        "Number of velocity points for the given species.",
       :code_name=>:np,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer}}},
 :grid=>
  {:description=>"",
   :should_include=>"true",
   :variables=>
    {:nx=>
      {:should_include=>"true",
       :description=>"Number of gridpoints in the x spatial dimension.",
       :help=>"Number of gridpoints in the x spatial dimension.",
       :code_name=>:nx,
       :must_pass=>
        [{:test=>"kind_of? Integer",
          :explanation=>"This variable must be an integer."}],
       :type=>:Integer}}}}
