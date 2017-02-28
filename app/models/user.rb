class User < ActiveRecord::Base
  has_many :assignments
  has_many :projects, through: :assignments
  has_many :tasks

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    first_name + " " + last_name
  end
end
