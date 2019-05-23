class Product < ApplicationRecord
  
  belongs_to :supplier  
  has_many :images 
  has_many :orders


  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 15..400}


  def is_discounted?
    price <= 10
  end

  def tax
    (price * 0.09)
  end

  def total
    price + tax
  end

end
