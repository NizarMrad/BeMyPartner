# frozen_string_literal: true

class Budgetisation < ApplicationRecord
  belongs_to :project
  belongs_to :budget
end
