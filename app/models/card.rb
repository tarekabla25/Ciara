class Card < ApplicationRecord

  COMPARE_ATTRS = [:performance, :seats, :consume, :speed, :acceleration, :price]
  ATTRS = {
      brand: {name: 'Marke'},
      model: {name: 'Modell'},
      performance: {name: 'Leistung (ps)', compare: :max},
      seats: {name: 'Anzahl Sitze', compare: :max},
      consume: {name: 'Benzinverbrauch', compare: :min},
      speed: {name: 'Endgeschwindigkeit', compare: :max},
      acceleration: {name: 'Beschleunigung', compare: :min},
      price: {name: 'Preis', compare: :min},
  }

  belongs_to :game

  has_many :played_cards
  has_many :start_cards
  has_many :hand_cards

  validates :brand, :model, presence: true
  validates :model, uniqueness: { scope: [:brand] }
  validates :seats, :speed, :acceleration, :performance, numericality: { only_integer: true, greater_than: 0 }  #acceleration was a float in the migration
  validates :consume, :price, numericality: { greater_than: 0 }

  
  def self.compare(cards, attr)
    cards.shuffle.send("#{ATTRS[attr][:compare]}_by") { |card| card.send(attr) }
  end



  # todo: to_html!
  # def output
  #   <<-CARD
  #     ###########################
  #     |#{brand.ljust(9)}-#{model.rjust(15)}|
  #     |-------------------------|
  #     |Leistung            #{performance.to_s.rjust(5)}|
  #     |Sitze               #{seats.to_s.rjust(4)} |
  #     |Verbrauch           #{consume.to_s.rjust(5)}|
  #     |Max km/h            #{speed.to_s.rjust(5)}|
  #     |Turboboost          #{acceleration.to_s.rjust(5)}|
  #     |Preis($)       #{price.to_s.rjust(10)}|
  #     ###########################
  #   CARD
  # end


end
