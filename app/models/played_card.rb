class PlayedCard < ApplicationRecord
  
  belongs_to :card
  belongs_to :match_player  
  belongs_to :round
  
end
