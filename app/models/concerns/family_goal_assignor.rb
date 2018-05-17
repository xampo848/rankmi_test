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
