require 'rails_helper'

RSpec.describe FamilyGoal, type: :model do
  let!(:excel_family_goals) do
    [['EJECUTIVO PERSONAS', 'stdfijaejecpers', 'EJECUTIVO PERSONAS', 'ZONA CENTRO 1', 'Banco yFiliales'],
     ['EJECUTIVO PERSONAS', 'stdfijaejecpers', 'EJECUTIVO PERSONAS JUNIOR', 'ZONA CENTRO 2', 'Banco y Filiales'],
     ['EJECUTIVO PERSONAS', 'stdfijaejecpers', 'EJECUTIVO PERSONAS JUNIOR', 'ZONA CENTRO 2', 'Banco y Filiales']]
  end

  context 'Uploading massively FamilyGoals' do
    before do
      uploader = FamilyGoals::Uploader.new(excel_family_goals)
      uploader.upload
    end
    it 'Upload all without duplication' do
      expect(FamilyGoal.count).to eq(2)
    end
  end
end
