require "pry"

class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating") # all.maximum / self.maximum / Show.maximum
  end

  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating).first
  # binding.pry
  end

  # you can use .map &:symbol to map results
  # Show.where("rating = 2").map &:name
  # Show.where("day ='Monday'").map &:name

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating).take
  end

  # take and first are the same it seems

  def self.ratings_sum
    self.sum("rating")
  end

  def self.popular_shows
    self.where("rating > 5")   # self.where("rating > 5").map &:name  would return just an array ofnames that meet the condition
    #  binding.pry
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end






end
