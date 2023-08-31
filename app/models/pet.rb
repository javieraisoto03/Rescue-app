class Pet < ApplicationRecord
  belongs_to :user
  has_many :featurespets
  has_many :features, through: :featurespets

  include PgSearch::Model
    pg_search_scope :search_full_text,
    against: {
    nombre: 'A',
  }

end
