module FamilyGoals
  # This class is designed to the bulk upload of family goals
  class Uploader
    attr_accessor :errors

    def initialize(excel_file)
      @excel_file = excel_file

      # assuming always comes in same order
      @columns = %i[name_family_goals code_family_goals role area world]
    end

    def upload
      FamilyGoal.import @columns, @excel_file, batch_size: 1000, on_duplicate_key_ignore: true
    end
  end
end
