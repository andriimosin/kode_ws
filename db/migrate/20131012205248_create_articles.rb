class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.references :admins, index: true
      t.references :category, index: true
      t.references :subcategory, index: true

      t.timestamps
    end
  end
end
