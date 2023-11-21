class Doctor < ApplicationRecord
  validates :first_name, :last_name, :title, :available, :specialty, presence: true
  validates :experience, inclusion: { in: 2..6 }
  validates :available, presence: true
end



# belongs_to :movie
# belongs_to :list
