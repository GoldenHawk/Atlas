class Project < ActiveRecord::Base
  attr_accessible :description, :name, :version
  has_many :tests
end
