class Film < ApplicationRecord
    has_many :viewings
    has_many :users, through: :viewings

    after_create_commit { broadcast_prepend_to :films }
end
