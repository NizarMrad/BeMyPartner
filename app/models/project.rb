class Project < ApplicationRecord
  belongs_to :user
  has_one :sector

  validates :title, presence: true , length: { in: 5..140, message: "A title must be at least 5 characters long" }
  validates :description, presence: true , length: {in: 100..5000, message: "Description's size must be at least 100 characters long and must not exceed 5000 characters" }


end
