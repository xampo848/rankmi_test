class User < ApplicationRecord
  include FamilyGoalAssignor
  belongs_to :family_goal
end
