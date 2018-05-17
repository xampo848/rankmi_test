module FamilyGoals
  # This class is designed to the bulk upload of family goals
  class Uploader
    NAME_COLUMN_INDEX = 0
    CODE_COLUMN_INDEX = 1
    ROLE_COLUMN_INDEX = 2
    AREA_COLUMN_INDEX = 3
    WORLD_COLUMN_INDEX = 4

    attr_accessor :errors
    def initialize(excel_file)
      @excel_file = excel_file
      @errors = []
    end

    def upload
      @excel_file.each do |row|
        begin
          create_family_goal(row)
        rescue Exception
          @errors << row
        end
      end
    end

    private

    def create_family_goal(row)
      FamilyGoal.create!(name_family_goals: row[NAME_COLUMN_INDEX],
                         code_family_goals: row[CODE_COLUMN_INDEX],
                         role: row[ROLE_COLUMN_INDEX],
                         area: row[AREA_COLUMN_INDEX],
                         world: row[WORLD_COLUMN_INDEX])
    end
  end
end
