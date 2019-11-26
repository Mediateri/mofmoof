class Property < ApplicationRecord
    validates :property, :rent, :adress,
        :building_age, presence: true
    validates :building_age, :how_many_minutes_walks, :how_many_minutes_walks1, numericality: true
end
