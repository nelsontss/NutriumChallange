class Clinic < ApplicationRecord
  has_many :nutritionist, dependent: :destroy
end
