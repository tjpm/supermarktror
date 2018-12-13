class Supplier < ApplicationRecord
  has_many :products
  def self.search(search_term)
    where("Name like :search_term", search_term: "%#{search_term}%")
  end

  def self.search_by(search_term)
    where("LOWER(Name) LIKE :search_term", search_term: "%#{search_term}%")
  end
end
