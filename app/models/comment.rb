class Comment < ApplicationRecord
  belongs_to :post

  #validations
  validates :commenter, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
