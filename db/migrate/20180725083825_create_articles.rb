class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :user, :category,  foreign_key: true #permet d'avoir une foreign_ key qui crée un index rattaché à users et categories
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
