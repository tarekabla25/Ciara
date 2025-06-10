class MatchPlayer < ApplicationRecord

    #todo top_card
  belongs_to :player
  belongs_to :match

  has_many :start_cards
  has_many :first_hand, through: :start_cards, source: :card

  has_many :hand_cards
  has_many :cards, through: :hand_cards

  has_many :played_cards
  has_many :stakes, through: :played_cards, source: :card

  has_many :as_winner_rounds, class_name: 'Round', foreign_key: :winner_id
  has_many :as_current_rounds, class_name: 'Round', foreign_key: :current_player_id

  validates :number, presence: true


  #has_and_belongs_to_many :cards, through: :card  #?????

  # def merge!
  #   cards.shuffle!
  # end

  # def top_card
  #   cards.first
  # end

  # def access_random
  #   card_types[rand(card_types.size)]
  # end

  # def access_manual
  #   puts "Bitte Attribut auswählen:"
  #   card_types.each_with_index do |type, i|
  #     puts "#{i+1})  #{Card::ATTRS[type][:name]}"
  #   end
  #   index = gets.chomp.strip.to_i
  #   unless Array(1..card_types.size).include?(index)
  #     puts "Ungültige Eingabe - bitte erneut versuchen!"
  #     return access_manual
  #   end
  #   card_types[index - 1]
  # end

  # def win(card)
  #   cards << card
  # end

  # def lose
  #   cards.shift
  # end


  # private


  # def card_types
  #   @card_types ||= Card::COMPARE_ATTRS
  # end

end
