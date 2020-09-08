class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :budget_id
      t.string :profile_needed
      t.string :files
      t.string :city
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
