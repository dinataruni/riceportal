class Quote < ActiveRecord::Base
  belongs_to :user
  has_one :purchase
  validates :user_id, presence: true
  delegate :name, :email, to: :user, :prefix => true
end
