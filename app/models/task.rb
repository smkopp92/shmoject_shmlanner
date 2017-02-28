class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :project_id, presence: true
end
