class Product < ApplicationRecord

  has_many :carts, dependent: :destroy
  has_many :customers, through: :carts, source: :user
  has_and_belongs_to_many :categories

  validates :name, presence: true

end
