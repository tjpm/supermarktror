class Product < ApplicationRecord
  validates :Bezeichnung, presence: true,
                            length: {minimum: 3}
end
