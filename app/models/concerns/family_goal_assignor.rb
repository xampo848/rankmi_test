# this module is for user family goal assign
# evaluating if a family goals change is needed
module FamilyGoalAssignor
  extend ActiveSupport::Concern

  included do
    before_save :assign_family_goal
  end

  def assign_family_goal
    family_goal = FamilyGoal.find_by(role: try(:role), area: try(:area),
                                     world: try(:world))
    self.family_goal = family_goal if family_goal.present?
  end
end
