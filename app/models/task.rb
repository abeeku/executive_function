class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :id
  belongs_to :user
end
