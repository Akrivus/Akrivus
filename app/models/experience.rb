class Experience < ApplicationRecord
  include Embeddable

  has_and_belongs_to_many :skills
end
