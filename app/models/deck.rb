class Deck < ApplicationRecord
  belongs_to :tournament
  has_many :cards

  validates :name, presence: true
  validates :placing, presence: true
  validates :player, presence: true
  validates :tournament_id, presence: true
end
