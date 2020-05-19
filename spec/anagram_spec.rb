require 'anagram_computer.rb'

RSpec.describe AnagramComputer do

    it 'creates an anagram computer class' do
      anagram_computer = AnagramComputer.new
      expect(anagram_computer).to be_kind_of(AnagramComputer)
    end    

end