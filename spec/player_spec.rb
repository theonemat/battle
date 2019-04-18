require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  context '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
  context '#reduce_hp' do
    it 'reduces player hp'do
      expect{ dave.reduce_hp }.to change  { dave.hit_points }.by(-10)
    end
    it 'attacks a player' do
      expect(dave).to receive(:reduce_hp)
      mittens.attack(dave)
    end

  end
end
