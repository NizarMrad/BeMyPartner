# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :skills
      t.string :linkedin_url
      t.integer :age
      t.string :city

      t.references :user, null: false, foreign_key: true

      t.integer :user_id

      t.integer :sector_id

      t.timestamps
    end
  end
end
