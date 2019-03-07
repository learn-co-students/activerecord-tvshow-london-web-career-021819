class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

#using find_by returns the instance
  def self.most_popular_show
   self.find_by(rating: highest_rating)
 end

 def self.lowest_rating
   self.minimum(:rating)
 end

 def self.least_popular_show
   self.find_by(rating: lowest_rating)
 end

 def self.ratings_sum
   self.sum(:rating)
 end

#Active Record will take the first argument as the conditions string and any additional arguments will replace the question marks (?) in it.
 def self.popular_shows
    self.where('rating > ?', 5)
 end

 def self.shows_by_alphabetical_order
   self.order(:name)
 end

end
