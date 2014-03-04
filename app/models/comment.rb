class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  validates :user_id, presence: true
  delegate :name, :email, to: :user, :prefix => true
end
