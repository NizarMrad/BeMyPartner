# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :description
      t.string :files
      t.text :title
      t.string :sector
      t.integer :budget
      t.string :city
      t.string :profile_needed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
