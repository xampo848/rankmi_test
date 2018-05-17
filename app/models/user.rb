class User < ApplicationRecord
  include FamilyGoalAssignor
  belongs_to :user
end
