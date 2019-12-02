class Language < ApplicationRecord
  has_many :fluencies
  has_many :appointments
  has_many :users, through: :fluencies
end
