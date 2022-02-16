class Restaurant < ApplicationRecord
  Category = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: Category }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true

end
