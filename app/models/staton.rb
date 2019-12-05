class Staton < ApplicationRecord
  belongs_to :my_property, optional: true
end
