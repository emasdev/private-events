class User < ApplicationRecord
  validates :name, uniqueness: true
  has_many :events
end
