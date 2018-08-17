class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :cocktail_tags, dependent: :destroy
  has_many :tags, through: :cocktail_tags
  has_many :cocktails, through: :cocktail_tags
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
