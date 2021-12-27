class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :resume, length: { minimum: 5, maximum: 250 }
end
