require 'game'

describe Game do

  subject(:game) {described_class.new(player1,player2)}

  let(:player1) {double :player1}
  let(:player2) {double :player2}

  describe '#attack' do
    it 'reduces the other player\'s hit points' do
      expect(player2).to receive :receive_hit
      game.attack(player2)
    end
  end

end
