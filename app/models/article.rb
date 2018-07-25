class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :likes 
end
