class Show < ActiveRecord::Base  #allow us to mess around using SQL <> Ruby  
    
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show 
    Show.order(:rating).last
  end 

  def self.lowest_rating
    Show.minimum(:rating)
    #Show.order(:rating).first.rating 
  end 
  
  def self.least_popular_show
   Show.order(:rating).first
  end 
  
  def self.ratings_sum 
    Show.sum(:rating)
  end 

  def self.popular_shows 
    Show.where('rating > 5')
  end 

end 