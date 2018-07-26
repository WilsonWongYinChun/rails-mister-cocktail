class Cocktail < ApplicationRecord
  has_many :ingredients
  has_many :doses, through :ingredients
  validates :name, uniqueness: true, presence: true
end
