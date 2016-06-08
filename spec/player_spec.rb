describe Player do
  
  subject(:player) { described_class.new(:name) }

  describe '#name' do

    it 'returns the name of the player' do
      expect(player.name).to eq :name
    end

  end
 
end