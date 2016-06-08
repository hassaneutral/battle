describe Player do
  
  subject(:player) { described_class.new(:name) }
  let(:player2) { described_class.new(:name2) }

  describe '#name' do

    it 'returns the name of the player' do
      expect(player.name).to eq :name
    end

  end

  describe '#hit_points' do
    it 'returns the default hit points' do
      expect(player.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'reduces the other player\'s hit points' do
      player.attack(player2)
      expect(player2.hit_points).to eq 90
    end
  end

end
