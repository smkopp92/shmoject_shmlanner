class Project < ActiveRecord::Base
  has_many :assignments
  has_many :users, through: :assignments
  has_many :tasks

  validates :name, presence: true
end
