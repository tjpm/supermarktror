class Order < ApplicationRecord
  has_many :products, through: :orderpositions
end
