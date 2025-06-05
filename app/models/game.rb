class Game < ApplicationRecord
  
  has_many :matches
  has_many :cards




#   attr_accessor :status, :current_player


#   def initialize
#     self.status = 'new'
#   end

#   def start!
#     self.status = 'collect_players'

#     while status == 'collect_players' do
#       puts "Bitte Namen für Spieler #{players.size + 1} eingeben:"
#       if (input = gets.chomp.strip) =~ /start/i
#         next puts "Es sind noch nicht genügend Spieler eingetragen!" if players.size < 2
#         self.status = 'run'
#       elsif players.size == 5
#         puts "Die maximale Anzahl von 5 Spielern ist bereits erreicht - bitte 'start' eingeben!"
#       else
#         players << Player.new(input, players.size + 1)
#       end
#     end

#     run!
#   end

#   def run!
#     puts "\n\n-----------------------------"
#     puts "Spiel gestartet...\n"
#     puts "Spieler sind:"
#     players.each { |player| puts " - Spieler #{player.number}: #{player.name}" }
#     puts "\nVerteile Karten..."
#     distribute_cards!
#     display_card_distribution!
#     puts "\nMische Karten..."
#     players.each(&:merge!)
#     puts "\nWähle Startspieler..."
#     select_player!
#     puts "#{current_player.name} fängt an..."
#     puts "Los gehts!\n\n"
#     choose!
#   end

#   def distribute_cards!
#     card_set.shuffle.each_slice((card_set.size / players.size.to_f).ceil).each_with_index do |set, i|
#       players[i].cards.concat(set)
#     end
#   end

#   def display_card_distribution!
#     players.each { |player| puts " #{player.name} hat #{player.cards.size} Karten." }
#   end

#   def select_player!(player = nil)
#     self.current_player = player || players.shuffle.min_by { |player| player.cards.size }
#   end

#   def choose!
#     puts "=" * 79
#     puts "\nAktiver Spieler: #{current_player.name}"
#     puts "Deine Karte, #{human.name}, ist:\n\n"
#     puts "#{human.top_card.output}\n"
#     attr = chosen_attr
#     winning_card = Card.compare(players.map(&:top_card), attr)
#     winner = players.detect { |player| player.top_card == winning_card }
#     puts "Diese Runde hat #{winner.name} mit der Auswahl '#{Card::ATTRS[attr][:name]}' gewonnen!"
#     show_current_cards!
#     select_player!(winner)
#     the_winner_gets_it_all!
#     display_card_distribution!
#     reject_blank_players!
#     return finish! if players.one?

#     sleep(1)
#     gets
#     choose!
#   end

#   def chosen_attr
#     if current_player.computer
#       current_player.access_random
#     else
#       current_player.access_manual
#     end
#   end

#   def show_current_cards!
#     puts
#     players[1..-1].each do |computer|
#       puts "Die Karte von #{computer.name} war:"
#       puts computer.top_card.output
#       puts
#     end
#   end

#   def the_winner_gets_it_all!
#     players.map(&:lose).shuffle.each { |card| current_player.win(card) }
#   end

#   def reject_blank_players!
#     players.reject! do |player|
#       if player.cards.empty?
#         puts "Schade #{player.name}, du bist raus!"
#         true
#       end
#     end
#   end

#   def finish!
#     puts "Herzlichen Glückwunsch #{current_player.name}, du hast gewonnen! - noch ein Spiel? [y/n]"
#     selected = gets.chomp.strip
#     if selected == 'y'
#       Game.new.start!
#     elsif selected == 'n'
#       puts "Tschüss - bis zum nächsten Mal!"
#     else
#       puts "Ungültige Eingabe."
#       finish!
#     end
#   end

#   def card_set
#     @cards_set ||= Parser.new.import('auto_data.txt')
#   end

#   def players
#     @players ||= []
#   end

#   def human
#     @players.first
#   end

# end
# game = Game.new.start!



end
