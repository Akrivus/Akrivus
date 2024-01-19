class Position < ApplicationRecord
  has_many :projects
  has_many :skills, through: :projects
end
