class Post < ApplicationRecord
    has_many :comments, :dependent => :delete_all
    belongs_to :user
    #validations
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
