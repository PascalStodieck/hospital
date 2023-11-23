class Doctor < ApplicationRecord
  has_many :educations, dependent: :destroy
  validates :first_name, :last_name, :title, :specialty, presence: true
  validates :experience, inclusion: { in: 2..6 }
end
