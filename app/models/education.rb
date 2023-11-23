class Education < ApplicationRecord
  belongs_to :doctor
  validates :university, :degree_name, presence: true
  validates :score, inclusion: { in: 50..100 }
end
