class User < ActiveRecord::Base
  has_many :favings
  has_many :preferences
  has_many :preferred_tags, through: :preferences, source: :tag
end
