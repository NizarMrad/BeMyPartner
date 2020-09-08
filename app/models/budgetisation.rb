class Budgetisation < ApplicationRecord
  belongs_to :project
  belongs_to :budget
end
