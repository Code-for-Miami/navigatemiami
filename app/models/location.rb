class Location < ApplicationRecord
  validates :name, :address1, :city, :zip, :state, presence: true
end
