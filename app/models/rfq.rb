class Rfq < ActiveRecord::Base
  belongs_to :user
  has_one :quote
  validates :user_id, presence: true
  delegate :name, :email, to: :user, :prefix => true
end
