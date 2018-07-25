class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, :article, foreign_key: true #permet d'avoir une foreign_ key qui crée un index rattaché à users et articles 
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
