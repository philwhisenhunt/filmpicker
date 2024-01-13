class User < ApplicationRecord
    has_many :viewings
    has_many :films, through: :viewings

    def seen?(film)
        viewings.exists?(film: film)
    end

end
