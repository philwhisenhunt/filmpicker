class Viewing < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :film, dependent: :destroy
end
