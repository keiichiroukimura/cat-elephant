class Informaition < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations, reject_if: :all_blank

  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
end
