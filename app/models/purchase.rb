class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  validates :user_id, presence: true
  delegate :name, :email, to: :user, :prefix => true
end
