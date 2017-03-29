class Job < ApplicationRecord
  belongs_to :user
  has_many :job_boats
  has_many :boats, through: :job_boats
end
