class Show < ActiveRecord::Base  #allow us to mess around using SQL <> Ruby  
    
  def self.highest_rating 
    Show.maximum(:rating)
  end 


end 