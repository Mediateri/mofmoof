class Property < ApplicationRecord
    validates :property, :rent, :adress,
        :building_age, presence: true
end
