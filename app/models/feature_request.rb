class FeatureRequest < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  delegate :name, :email, to: :user, :prefix => true
end
