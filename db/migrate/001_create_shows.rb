create_table(:shows) do |t| 
  t.string :name
  t.string :network 
  t.string :day 
  t.integer :rating 
end 

#symbols are immutable and unique 