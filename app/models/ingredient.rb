class Ingredient < ApplicationRecord
  # belongs_to :cocktail
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
end
