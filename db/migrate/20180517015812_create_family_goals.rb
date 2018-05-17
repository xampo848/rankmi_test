class CreateFamilyGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :family_goals do |t|
      t.string :name_family_goals
      t.string :code_family_goals
      t.string :role
      t.string :area
      t.string :world

      t.timestamps
    end
  end
end
