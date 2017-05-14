class Deck < ApplicationRecord
  belongs_to :tournament

  validates :name, presence: true
  validates :placing, presence: true
  validates :player, presence: true
  validates :tournament_id, presence: true
end
