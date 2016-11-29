class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :body, presence: true
end
