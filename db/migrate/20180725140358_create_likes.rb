class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true #permet d'avoir une foreign_ key qui crée un index rattaché à users
      t.string :title
      t.references :article, foreign_key: true #permet d'avoir une foreign_ key qui crée un index rattaché à articles 

      t.timestamps
    end
  end
end
