class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
  # validates :cocktail, presence: true
  validates :description, presence: true
  # validates :ingredient, presence: true
end
