class Location < ApplicationRecord
  validates :name, :address1, :city, :zip, presence: true
end
