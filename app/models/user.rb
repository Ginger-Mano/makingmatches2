class User < ApplicationRecord
    has_many :games
    has_many :cards, through: :game
end
