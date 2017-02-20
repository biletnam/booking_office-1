class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true
end