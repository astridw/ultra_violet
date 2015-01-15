class User < ActiveRecord::Base
  has_many :waves
  validates :username, presence: true
  validates :password, presence: true, confirmation: true
end
