require 'pry'

class Deck

    @@all = []
    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def self.all
        @@all
    end

    attr_accessor :cards

    def initialize
        @cards = []
        generate_cards
        @@all << self
    end

    def generate_cards
        @@suits.each do |suit|
            @@ranks.each do |rank|
                new_card = Card.new(rank, suit)
                @cards << new_card
            end
        end
        @cards
    end

    def choose_card
        selected_card = @cards.delete_at(rand(@cards.length))
        selected_card
    end

end

class Card

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank, @suit = rank, suit
        @@all << self
    end
end

c1 = Deck.new
puts c1
