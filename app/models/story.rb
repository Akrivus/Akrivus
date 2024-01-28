class Story < ApplicationRecord
  include Embeddable

  belongs_to :experience
end
