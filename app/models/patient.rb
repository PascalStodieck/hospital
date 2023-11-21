class Patient < ApplicationRecord
  validates :first_name, :last_name, :insurance, presence: true
  validates :cured, presence: true
end
