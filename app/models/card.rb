class Card < ApplicationRecord
  belongs_to :deck

  validates :name, presence: true
  validates :colors, presence: true
  validates :number_played, presence: true
  validates :img_url, presence: true
  validates :main?, presence: true
end
