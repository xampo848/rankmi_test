class AddIndexUniqConstrainFamilyGoals < ActiveRecord::Migration[5.1]
  def change
    add_index :family_goals, %i[role area goals], unique: true
  end
end
