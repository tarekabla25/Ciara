class Match < ApplicationRecord
  
  belongs_to :game

  has_many :match_players
  has_many :active_players, -> { :active }
  has_many :rounds
  has_many :match_cards

end
