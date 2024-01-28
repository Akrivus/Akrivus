class Skill < ApplicationRecord
  include Embeddable

  has_and_belongs_to_many :experiences
end
