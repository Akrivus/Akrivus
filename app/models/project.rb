class Project < ApplicationRecord
  belongs_to :position
  has_and_belongs_to_many :skills
end
