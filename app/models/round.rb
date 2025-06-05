class Round < ApplicationRecord

  belongs_to :match
  belongs_to :winner, class_name: 'MatchPlayer'
  belongs_to :current_player, class_name: 'MatchPlayer'
  
  has_many :match_cards

end
