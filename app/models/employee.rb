class Employee < ApplicationRecord
  belongs_to :dog
  validates :first_name, :last_name, presence: true
  validates :alias, uniqueness: true
  validates :title, uniqueness: true
end
