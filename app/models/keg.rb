class Keg < ApplicationRecord
  has_many:pulls, dependent: :destroy
  validates :brand, presence:true
  validates :name, presence:true
  validates :amount, presence:true
end
