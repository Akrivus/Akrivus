class Persona < ApplicationRecord
  has_one_attached :avatar
  has_one_attached :background
end
