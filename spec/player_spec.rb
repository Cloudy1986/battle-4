require 'player'

describe Player do
  subject(:mark) { Player.new("Mark") }
  subject(:dave) { Player.new("Dave") }

  describe '#name' do
    it "returns the player's name" do
      expect(mark.name).to eq ("Mark")
    end
  end

  describe 'hit points' do
    it 'returns the hit points' do
      expect(mark.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe 'attack' do
    it 'damages the player' do
      expect(dave).to receive(:receive_damage)
      mark.attack(dave)
    end
  end

  describe 'receive_damage' do
    it 'reduces the player hit points' do
      expect { mark.receive_damage }.to change { mark.hit_points }.by(-10)
    end
  end

end

