class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :sector_id
      t.text :content
      t.belongs_to :user, foreign_key: true


      t.timestamps
    end
  end
end