class User < ActiveRecord::Base
  validate :name
  has_many :tickets
end