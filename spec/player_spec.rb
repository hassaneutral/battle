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



  describe '#receive_hit' do

    it 'reduces player hit points by 10' do
      expect { player.receive_hit }.to change {player.hit_points}.by -10
    end

  end

end
