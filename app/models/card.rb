class Card < ApplicationRecord

  belongs_to :player
  validates :brand, :model, presence: true
  validates :model, uniqueness: { scope: [:brand] }
  validates :seats, :speed, :acceleration, numericality: { only_integer: true, greater_than: 0 }
  validates :performance, :consume, :price, numericality: { greater_than: 0 }









  # ATTRS = {
  #     brand: {name: 'Marke', tc: :to_s},
  #     model: {name: 'Modell', tc: :to_s},
  #     performance: {name: 'Leistung (ps)', tc: :to_i, compare: :max},
  #     seats: {name: 'Anzahl Sitze', tc: :to_i, compare: :max},
  #     consume: {name: 'Benzinverbrauch', tc: :to_f, compare: :min},
  #     speed: {name: 'Endgeschwindigkeit', tc: :to_i, compare: :max},
  #     acceleration: {name: 'Beschleunigung', tc: :to_f, compare: :min},
  #     price: {name: 'Preis', tc: :to_f, compare: :min},
  # }

  # COMPARE_ATTRS = [:performance, :seats, :consume, :speed, :acceleration, :price]

  # attr_accessor *ATTRS.keys


  # def self.compare(cards, attr)
  #   cards.shuffle.send("#{ATTRS[attr][:compare]}_by") { |card| card.send(attr) }
  # end

  # def initialize(values = [])
  #   ATTRS.keys.each_with_index do |attr, index|
  #     send("#{attr}=", values[index].send(ATTRS[attr][:tc]))
  #   end
  # end

  # def valid?
  #   return false if brand.empty?
  #   return false if model.empty?

  #   COMPARE_ATTRS.all? { |key| send(key).nonzero? }
  # end

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
