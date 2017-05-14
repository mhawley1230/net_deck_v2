class Tournament < ApplicationRecord

  validates :name, presence: true
  validates :format, presence: true
  validates :location, presence: true
  validates :no_of_players, presence: true
end
