class CreateBudgetisations < ActiveRecord::Migration[5.2]
  def change
    create_table :budgetisations do |t|
      t.belongs_to :project, foreign_key: true
      t.belongs_to :budget, foreign_key: true

      t.timestamps
    end
  end
end
