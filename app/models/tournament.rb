class Tournament < ApplicationRecord
  has_many :decks

  validates :name, presence: true
  validates :format, presence: true
  validates :location, presence: true
  validates :no_of_players, presence: true
  validates :date, presence: true
end
