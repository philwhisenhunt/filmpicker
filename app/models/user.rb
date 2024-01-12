class User < ApplicationRecord
    has_many :viewings
    has_many :films, through: :viewings


end
