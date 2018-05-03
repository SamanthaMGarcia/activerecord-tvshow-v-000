class Show < ActiveRecord::Base
  def self.highest_rating
      self.maximum(:rating)
  end

  def self.most_popular_show
      shows = self.order(rating: :DESC)
      shows.first
  end

  def self.lowest_rating
      self.minimum(:rating)
  end

  def self.least_popular_show
      shows = self.order(rating: :ASC)
      shows.first
  end

  def self.ratings_sum
      self.sum(:rating)
  end

  def self.popular_shows

  end
end
