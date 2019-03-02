class Show < ActiveRecord::Base

  # return highest value in ratings column
  def self.highest_rating
    Show.maximum(:rating)
  end

  # return show with highest_rating
  def self.most_popular_show
    highest = Show.highest_rating
    Show.find_by(rating: highest)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    lowest = Show.lowest_rating
    Show.find_by(rating: lowest)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  # return array of shows where rating > 5
  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end
