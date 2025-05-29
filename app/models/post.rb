class Post < ApplicationRecord
  belongs_to :user
  validates :title, :description, presence: true
  has_many :comments, dependent: :destroy
end
