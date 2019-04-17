class Station < ApplicationRecord
  belongs_to :informaition, optional: true
end
