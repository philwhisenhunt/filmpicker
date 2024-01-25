class User < ApplicationRecord
    has_many :viewings, dependent: :destroy
    has_many :films, through: :viewings
    validates :username, uniqueness: true

    def seen?(film)
        viewings.exists?(film: film)
    end

end
