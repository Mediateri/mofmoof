class Property < ApplicationRecord
    validates :property, :rent, :adress,
        :building_age, presence: true
        def check
            if how_many_minutes_walks.present? && how_many_minutes_walks1.present?
                if how_many_minutes_walks <= how_many_minutes_walks1
                    errors.add(:how_many_minutes_walks, 'not perfect')
                end
            end
        end
end
