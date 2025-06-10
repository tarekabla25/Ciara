class HandCard < ApplicationRecord

  belongs_to :card
  belongs_to :match_player

end
