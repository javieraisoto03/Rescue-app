class Feature < ApplicationRecord
    has_many :featurespets
    has_many :pets,  through: :featurespets
end
