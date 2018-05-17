require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:familyGoal1) do
    FamilyGoal.create(
      name_family_goals: 'EJECUTIVO PERSONAS',
      code_family_goals: 'stdfijaejecpers',
      role: 'EJECUTIVO PERSONAS', area: 'ZONA CENTRO 1',
      world: 'Banco yFiliales'
    )
  end

  let!(:familyGoal2) do
    FamilyGoal.create(
      name_family_goals: 'EJECUTIVO PERSONAS',
      code_family_goals: 'stdfijaejecpers',
      role: 'EJECUTIVO PERSONAS', area: 'ZONA CENTRO 2',
      world: 'Banco yFiliales'
    )
  end

  let(:user) do
    User.create(
      role: 'EJECUTIVO PERSONAS', area: 'ZONA CENTRO 1',
      world: 'Banco yFiliales', family_goal: familyGoal1
    )
  end

  context 'Updating User' do
    before do
      user.update(area: 'ZONA CENTRO 2')
    end
    it '' do
      expect(user.family_goal).to eq(familyGoal2)
    end
  end
end
