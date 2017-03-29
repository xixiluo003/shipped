class Boat < ApplicationRecord
  has_many :jobs, through: :job_boats
  has_many :job_boats
  belongs_to :port
  belongs_to :user
end
