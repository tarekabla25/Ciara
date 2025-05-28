class Player < ApplicationRecord

  validates :name, :number, presence: true


  # attr_reader :cards
  #   @cards = []

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