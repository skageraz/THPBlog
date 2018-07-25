class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :user, :category,  foreign_key: true
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
