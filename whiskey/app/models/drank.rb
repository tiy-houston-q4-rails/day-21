class Drank < ActiveRecord::Base
  validates :name, :photo_url, :description, presence: true
  validates :abv, presence: true, numericality: {greater_than: 0, less_than_or_equal_to: 100}
end
