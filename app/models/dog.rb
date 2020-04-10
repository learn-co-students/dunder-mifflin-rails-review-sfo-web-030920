class Dog < ApplicationRecord
  has_many :employees
  validates :name, :age, :breed, presence: true
end
