class FamilyGoal < ApplicationRecord
  has_many :users
  validates :role, uniqueness: { scope: %i[area world] }
end
