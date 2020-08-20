class Nutritionist < ApplicationRecord
  has_many :appointment, dependent: :destroy
  belongs_to :clinic
end
