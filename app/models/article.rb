class Article < ApplicationRecord
	belongs_to :user

	validates :title, presence: true , length: { in: 5..140, message: "A title must be at least 5 characters long" }
	validates :content, presence: true , length: {in: 20..10000, message: "Content's size must be at least 20 characters long and must not exceed 10000 characters" }
end

