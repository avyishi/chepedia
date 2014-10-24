class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :users

  default_scope { order('created_at DESC') }

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
end
