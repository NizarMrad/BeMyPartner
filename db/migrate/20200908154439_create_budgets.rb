class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :amount
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
