class Project < ActiveRecord::Base
  attr_accessible :description, :name
  
  validates :name, :uniqueness => true
  validates :description, :presence => true

  has_many :permissions
  has_many :users, :through => :permissions
  has_many :types, :through => :permissions
end
