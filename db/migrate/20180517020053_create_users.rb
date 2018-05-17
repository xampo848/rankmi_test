class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :role
      t.string :area
      t.string :world
      t.belongs_to :family_goals, index: true, foreign_key: true
      t.timestamps
    end
  end
end
