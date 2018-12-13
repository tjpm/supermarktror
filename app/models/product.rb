class Product < ApplicationRecord
  has_many :orders, through: :orderpositions
  validates :Bezeichnung, presence: true,
                            length: {minimum: 3}
  # scope :starts_with, -> (name) { where("name like ?", "#{name}%")}

  def self.search(search_term)
    where("Bezeichnung like :search_term", search_term: "%#{search_term}%")
  end

  def self.search_by(search_term)
    where("LOWER(Bezeichnung) LIKE :search_term", search_term: "%#{search_term}%")
  end
end
#"%#{search_term}%")